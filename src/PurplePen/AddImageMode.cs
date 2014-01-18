﻿/* Copyright (c) 2006-2008, Peter Golde
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without 
 * modification, are permitted provided that the following conditions are 
 * met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * 
 * 3. Neither the name of Peter Golde, nor "Purple Pen", nor the names
 * of its contributors may be used to endorse or promote products
 * derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 * CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
 * USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 */

using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

using PurplePen.MapView;
using PurplePen.MapModel;

namespace PurplePen
{
    // Mode for adding an image to a course.
    class AddImageMode : BaseMode
    {
        Controller controller;
        SelectionMgr selectionMgr;
        UndoMgr undoMgr;
        EventDB eventDB;
        RectCourseObj startingObj;           // base object being dragged out -- used to create current obj being dragged.
        RectCourseObj currentObj;           // current object being dragged out.
        PointF startLocation;                               // location where dragging started.
        PointF handleDragging;

        // The image being added.
        Bitmap imageBitmap;

        // Aspect ratio (height/width) of image.
        float aspectRatio;

        // The image name
        string imageName;

        public AddImageMode(Controller controller, UndoMgr undoMgr, SelectionMgr selectionMgr, EventDB eventDB, Bitmap imageBitmap, string imageName)
        {
            this.controller = controller;
            this.undoMgr = undoMgr;
            this.selectionMgr = selectionMgr;
            this.eventDB = eventDB;
            this.imageBitmap = imageBitmap;
            this.aspectRatio = (float) imageBitmap.Height / (float) imageBitmap.Width;
            this.imageName = imageName;
        }

        // Mouse cursor looks like a crosshair
        public override Cursor GetMouseCursor(PointF location, float pixelSize)
        {
            return Cursors.Cross;
        }

        public override string StatusText
        {
            get
            {
                return StatusBarText.AddingImage;
            }
        }

        public override IMapViewerHighlight[] GetHighlights()
        {
            if (currentObj != null)
                return new CourseObj[] { currentObj };
            else
                return null;
        }

        // Update currentObj to reflect dragging to the given location.
        void DragTo(PointF location)
        {
            currentObj = (RectCourseObj)startingObj.Clone();
            currentObj.MoveHandle(handleDragging, location);
        }

        public override MapViewer.DragAction LeftButtonDown(PointF location, float pixelSize, ref bool displayUpdateNeeded)
        {
            // Begin dragging out the image.
            startLocation = location;
            startingObj = new ImageCourseObj(Id<Special>.None, 1.0F, controller.GetCourseAppearance(), 
                                             new PointF[]{location, new PointF(location.X + 0.001F, location.Y + 0.001F*aspectRatio)}, 
                                             imageName, imageBitmap);
            handleDragging = location;
            DragTo(location);
            displayUpdateNeeded = true;
            return MapViewer.DragAction.DelayedDrag;  // Also allow a click.
        }

        public override void LeftButtonDrag(PointF location, PointF locationStart, float pixelSize, ref bool displayUpdateNeeded)
        {
            DragTo(location);
            displayUpdateNeeded = true;
        }

        public override void LeftButtonClick(PointF location, float pixelSize, ref bool displayUpdateNeeded)
        {
            // User just clicked. Create image of a default size.
            CreateImageSpecial(new RectangleF(location, new SizeF(20F, 20F * aspectRatio)));
            displayUpdateNeeded = true;
        }

        public override void LeftButtonEndDrag(PointF location, PointF locationStart, float pixelSize, ref bool displayUpdateNeeded)
        {
            DragTo(location);

            RectangleF rect = currentObj.GetHighlightBounds();
            if (rect.Height < 1 || rect.Width < 1) {
                // Too small. Use the click action.
                LeftButtonClick(location, pixelSize, ref displayUpdateNeeded);
            }
            else {
                CreateImageSpecial(rect);
                displayUpdateNeeded = true;
            }
        }

        void CreateImageSpecial(RectangleF boundingRect)
        {
            undoMgr.BeginCommand(1851, CommandNameText.AddObject);
            Id<Special> specialId = ChangeEvent.AddImageSpecial(eventDB, boundingRect, imageBitmap, imageName);
            undoMgr.EndCommand(1851);

            selectionMgr.SelectSpecial(specialId);

            controller.DefaultCommandMode();
        }
    }

}
