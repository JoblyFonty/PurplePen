/* Copyright (c) 2007, Peter Golde
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

namespace PurplePen
{
    partial class ChangeCourseOrder
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ChangeCourseOrder));
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.moveDownButton = new System.Windows.Forms.Button();
            this.courseOrderLabel = new System.Windows.Forms.Label();
            this.listBoxCourses = new System.Windows.Forms.ListBox();
            this.moveUpButton = new System.Windows.Forms.Button();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // okButton
            // 
            resources.ApplyResources(this.okButton, "okButton");
            // 
            // cancelButton
            // 
            resources.ApplyResources(this.cancelButton, "cancelButton");
            // 
            // tableLayoutPanel1
            // 
            resources.ApplyResources(this.tableLayoutPanel1, "tableLayoutPanel1");
            this.tableLayoutPanel1.Controls.Add(this.moveDownButton, 1, 4);
            this.tableLayoutPanel1.Controls.Add(this.courseOrderLabel, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.listBoxCourses, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.moveUpButton, 1, 2);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            // 
            // moveDownButton
            // 
            resources.ApplyResources(this.moveDownButton, "moveDownButton");
            this.moveDownButton.Image = global::PurplePen.Properties.Resources.DownArrow;
            this.moveDownButton.Name = "moveDownButton";
            this.moveDownButton.UseVisualStyleBackColor = true;
            this.moveDownButton.Click += new System.EventHandler(this.moveDownButton_Click);
            // 
            // courseOrderLabel
            // 
            resources.ApplyResources(this.courseOrderLabel, "courseOrderLabel");
            this.tableLayoutPanel1.SetColumnSpan(this.courseOrderLabel, 2);
            this.courseOrderLabel.Name = "courseOrderLabel";
            // 
            // listBoxCourses
            // 
            resources.ApplyResources(this.listBoxCourses, "listBoxCourses");
            this.listBoxCourses.FormattingEnabled = true;
            this.listBoxCourses.Name = "listBoxCourses";
            this.tableLayoutPanel1.SetRowSpan(this.listBoxCourses, 5);
            this.listBoxCourses.SelectedIndexChanged += new System.EventHandler(this.listBoxCourses_SelectedIndexChanged);
            // 
            // moveUpButton
            // 
            resources.ApplyResources(this.moveUpButton, "moveUpButton");
            this.moveUpButton.Image = global::PurplePen.Properties.Resources.UpArrow;
            this.moveUpButton.Name = "moveUpButton";
            this.moveUpButton.UseVisualStyleBackColor = true;
            this.moveUpButton.Click += new System.EventHandler(this.moveUpButton_Click);
            // 
            // ChangeCourseOrder
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.Controls.Add(this.tableLayoutPanel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
            this.HelpTopic = "CourseCourseOrder.htm";
            this.Name = "ChangeCourseOrder";
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Show;
            this.Controls.SetChildIndex(this.tableLayoutPanel1, 0);
            this.Controls.SetChildIndex(this.okButton, 0);
            this.Controls.SetChildIndex(this.cancelButton, 0);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.ListBox listBoxCourses;
        private System.Windows.Forms.Button moveDownButton;
        private System.Windows.Forms.Label courseOrderLabel;
        private System.Windows.Forms.Button moveUpButton;
    }
}