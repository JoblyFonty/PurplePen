rem @echo off
if "%1"=="" goto MissingArg

pushd ..\..\..\..\..\Programs\MapModel
git checkout %1
popd 

if errorlevel 1 goto CheckoutFailed

echo "Copying..."
copy "..\..\..\..\..\Programs\PdfiumViewer\PdfiumViewer\bin\Debug\PdfiumViewer.dll" Debug
copy "..\..\..\..\..\Programs\PdfiumViewer\PdfiumViewer\bin\Debug\PdfiumViewer.pdb" Debug
copy "..\..\..\..\..\Programs\PdfiumViewer\Libraries\Pdfium\Without V8\x86\pdfium.dll" Debug

copy "..\..\..\..\..\Programs\PdfiumViewer\PdfiumViewer\bin\Release\PdfiumViewer.dll" Release
copy "..\..\..\..\..\Programs\PdfiumViewer\PdfiumViewer\bin\Release\PdfiumViewer.pdb" Release
copy "..\..\..\..\..\Programs\PdfiumViewer\Libraries\Pdfium\Without V8\x86\pdfium.dll" Release

goto End

:MissingArg
Echo "Pass name of branch to copy from (e.g., "trunk")
goto End

:CheckoutFailed
Echo "Checkout of branch '%1' failed"
goto End

:End