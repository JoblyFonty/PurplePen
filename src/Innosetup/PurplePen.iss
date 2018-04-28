; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

;contribute: http://github.com/stfx/innodependencyinstaller
;original article: http://codeproject.com/Articles/20868/NET-Framework-1-1-2-0-3-5-Installer-for-InnoSetup

;comment out product defines to disable installing them
;#define use_iis
;#define use_kb835732

;#define use_msi20
;#define use_msi31
;#define use_msi45

;#define use_ie6

;#define use_dotnetfx11
;#define use_dotnetfx11lp

;#define use_dotnetfx20
;#define use_dotnetfx20lp

;#define use_dotnetfx35
;#define use_dotnetfx35lp

#define use_dotnetfx40
;#define use_wic

;#define use_dotnetfx45
;#define use_dotnetfx46
;#define use_dotnetfx47

;#define use_msiproduct
;#define use_vc2005
;#define use_vc2008
;#define use_vc2010
;#define use_vc2012
;#define use_vc2013
;#define use_vc2015
;#define use_vc2017

;requires dxwebsetup.exe in src dir
;#define use_directxruntime

;#define use_mdac28
;#define use_jet4sp8

;#define use_sqlcompact35sp2

;#define use_sql2005express
;#define use_sql2008express

#define MyAppSetupName 'Purple Pen'
#define MyAppName "Purple Pen"
#define MyAppVersion "3.2.0"
#define MyAppPublisher "Golde Software"
#define MyAppURL "http://purple-pen.org"
#define MyAppExeName "PurplePen.exe"
#define BuildDir "..\PurplePen\bin\Release"
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{347D1E62-7134-4827-9679-4952BEC91C95}

AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
UninstallDisplayName={#MyAppName}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=output
OutputBaseFilename=purplepen-setup
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes

DisableProgramGroupPage=yes
ShowLanguageDialog=auto

SignTool=signhelper
SignedUninstaller=yes

UninstallDisplayIcon={app}\{#MyAppExeName},0

;MinVersion default value: "0,5.0 (Windows 2000+) if Unicode Inno Setup, else 4.0,4.0 (Windows 95+)"
;MinVersion=0,5.0
PrivilegesRequired=admin

;These were turned on in the sample for the bootstrapper, but I turned them off again.
;ArchitecturesAllowed=x86 x64 ia64
;ArchitecturesInstallIn64BitMode=x64 ia64

; downloading and installing dependencies will only work if the memo/ready page is enabled (default and current behaviour)
DisableReadyPage=no
DisableReadyMemo=no

; supported languages
#include "scripts\lang\english.iss"
#include "scripts\lang\german.iss"
#include "scripts\lang\french.iss"
#include "scripts\lang\italian.iss"
#include "scripts\lang\dutch.iss"

#ifdef UNICODE
#include "scripts\lang\chinese.iss"
#include "scripts\lang\polish.iss"
#include "scripts\lang\russian.iss"
#include "scripts\lang\japanese.iss"
#endif

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
Source: "{#BuildDir}\PurplePen.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#BuildDir}\CrashReporter.NET.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#BuildDir}\DotSpatial.Projections.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#BuildDir}\GDIPlusNative.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#BuildDir}\GDIPlusNative64.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#BuildDir}\Graphics2D.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#BuildDir}\Map_GDIPlus.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "{#BuildDir}\Map_PDF.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\Map_WPF.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\MapModel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\PdfConverter.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\..\..\..\PdfConverter\bin\Release\PdfConverter.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\PdfiumViewer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\PdfSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\Purple Pen Help.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\PurplePen.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\symbols.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\USWebCoatedSWOP.icc"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildDir}\Samples\*"; DestDir: "{app}\Samples"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\x64\*"; DestDir: "{app}\x64"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\x86\*"; DestDir: "{app}\x86"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\bg\*"; DestDir: "{app}\bg"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\de\*"; DestDir: "{app}\de"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\es\*"; DestDir: "{app}\es"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\et\*"; DestDir: "{app}\et"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\fi\*"; DestDir: "{app}\fi"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\fr\*"; DestDir: "{app}\fr"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\hu\*"; DestDir: "{app}\hu"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\ja\*"; DestDir: "{app}\ja"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\nb-NO\*"; DestDir: "{app}\nb-NO"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\nl\*"; DestDir: "{app}\nl"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\nn-NO\*"; DestDir: "{app}\nn-NO"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\pl\*"; DestDir: "{app}\pl"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\ro\*"; DestDir: "{app}\ro"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\sv\*"; DestDir: "{app}\sv"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BuildDir}\zh-CN\*"; DestDir: "{app}\zh-CN"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCR; SubKey: ".ppen"; ValueType: string; ValueData: "Purple Pen Files"; Flags: uninsdeletekey
Root: HKCR; SubKey: "Purple Pen Files"; ValueType: string; ValueData: "Purple Pen Event File"; Flags: uninsdeletekey
Root: HKCR; SubKey: "Purple Pen Files\Shell\Open\Command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Purple Pen Files\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},0"; Flags: uninsdeletevalue

[CustomMessages]
DependenciesDir=MyProgramDependencies
WindowsServicePack=Windows %1 Service Pack %2

; shared code for installing the products
#include "scripts\products.iss"

; helper functions
#include "scripts\products\stringversion.iss"
#include "scripts\products\winversion.iss"
#include "scripts\products\fileversion.iss"
#include "scripts\products\dotnetfxversion.iss"

; actual products
#ifdef use_iis
#include "scripts\products\iis.iss"
#endif

#ifdef use_kb835732
#include "scripts\products\kb835732.iss"
#endif

#ifdef use_msi20
#include "scripts\products\msi20.iss"
#endif
#ifdef use_msi31
#include "scripts\products\msi31.iss"
#endif
#ifdef use_msi45
#include "scripts\products\msi45.iss"
#endif

#ifdef use_ie6
#include "scripts\products\ie6.iss"
#endif

#ifdef use_dotnetfx11
#include "scripts\products\dotnetfx11.iss"
#include "scripts\products\dotnetfx11sp1.iss"
#ifdef use_dotnetfx11lp
#include "scripts\products\dotnetfx11lp.iss"
#endif
#endif

#ifdef use_dotnetfx20
#include "scripts\products\dotnetfx20.iss"
#include "scripts\products\dotnetfx20sp1.iss"
#include "scripts\products\dotnetfx20sp2.iss"
#ifdef use_dotnetfx20lp
#include "scripts\products\dotnetfx20lp.iss"
#include "scripts\products\dotnetfx20sp1lp.iss"
#include "scripts\products\dotnetfx20sp2lp.iss"
#endif
#endif

#ifdef use_dotnetfx35
;#include "scripts\products\dotnetfx35.iss"
#include "scripts\products\dotnetfx35sp1.iss"
#ifdef use_dotnetfx35lp
;#include "scripts\products\dotnetfx35lp.iss"
#include "scripts\products\dotnetfx35sp1lp.iss"
#endif
#endif

#ifdef use_dotnetfx40
#include "scripts\products\dotnetfx40client.iss"
#include "scripts\products\dotnetfx40full.iss"
#endif

#ifdef use_dotnetfx45
#include "scripts\products\dotnetfx45.iss"
#endif

#ifdef use_dotnetfx46
#include "scripts\products\dotnetfx46.iss"
#endif

#ifdef use_dotnetfx47
#include "scripts\products\dotnetfx47.iss"
#endif

#ifdef use_wic
#include "scripts\products\wic.iss"
#endif

#ifdef use_msiproduct
#include "scripts\products\msiproduct.iss"
#endif
#ifdef use_vc2005
#include "scripts\products\vcredist2005.iss"
#endif
#ifdef use_vc2008
#include "scripts\products\vcredist2008.iss"
#endif
#ifdef use_vc2010
#include "scripts\products\vcredist2010.iss"
#endif
#ifdef use_vc2012
#include "scripts\products\vcredist2012.iss"
#endif
#ifdef use_vc2013
#include "scripts\products\vcredist2013.iss"
#endif
#ifdef use_vc2015
#include "scripts\products\vcredist2015.iss"
#endif
#ifdef use_vc2017
#include "scripts\products\vcredist2017.iss"
#endif

#ifdef use_directxruntime
#include "scripts\products\directxruntime.iss"
#endif

#ifdef use_mdac28
#include "scripts\products\mdac28.iss"
#endif
#ifdef use_jet4sp8
#include "scripts\products\jet4sp8.iss"
#endif

#ifdef use_sqlcompact35sp2
#include "scripts\products\sqlcompact35sp2.iss"
#endif

#ifdef use_sql2005express
#include "scripts\products\sql2005express.iss"
#endif
#ifdef use_sql2008express
#include "scripts\products\sql2008express.iss"
#endif

[Code]
const
  // This is a list of all the old InstallShield app ids that we should uninstall
  // before installation.
  OldAppIds = '{3B58B548-0ECD-4ADA-93F0-CD2391051E36}';

function InitializeSetup(): boolean;
begin
	// initialize windows version
	initwinversion();

#ifdef use_iis
	if (not iis()) then exit;
#endif

#ifdef use_msi20
	msi20('2.0'); // min allowed version is 2.0
#endif
#ifdef use_msi31
	msi31('3.1'); // min allowed version is 3.1
#endif
#ifdef use_msi45
	msi45('4.5'); // min allowed version is 4.5
#endif
#ifdef use_ie6
	ie6('5.0.2919'); // min allowed version is 5.0.2919
#endif

#ifdef use_dotnetfx11
	dotnetfx11();
#ifdef use_dotnetfx11lp
	dotnetfx11lp();
#endif
	dotnetfx11sp1();
#endif

	// install .netfx 2.0 sp2 if possible; if not sp1 if possible; if not .netfx 2.0
#ifdef use_dotnetfx20
	// check if .netfx 2.0 can be installed on this OS
	if not minwinspversion(5, 0, 3) then begin
		MsgBox(FmtMessage(CustomMessage('depinstall_missing'), [FmtMessage(CustomMessage('WindowsServicePack'), ['2000', '3'])]), mbError, MB_OK);
		exit;
	end;
	if not minwinspversion(5, 1, 2) then begin
		MsgBox(FmtMessage(CustomMessage('depinstall_missing'), [FmtMessage(CustomMessage('WindowsServicePack'), ['XP', '2'])]), mbError, MB_OK);
		exit;
	end;

	if minwinversion(5, 1) then begin
		dotnetfx20sp2();
#ifdef use_dotnetfx20lp
		dotnetfx20sp2lp();
#endif
	end else begin
		if minwinversion(5, 0) and minwinspversion(5, 0, 4) then begin
#ifdef use_kb835732
			kb835732();
#endif
			dotnetfx20sp1();
#ifdef use_dotnetfx20lp
			dotnetfx20sp1lp();
#endif
		end else begin
			dotnetfx20();
#ifdef use_dotnetfx20lp
			dotnetfx20lp();
#endif
		end;
	end;
#endif

#ifdef use_dotnetfx35
	//dotnetfx35();
	dotnetfx35sp1();
#ifdef use_dotnetfx35lp
	//dotnetfx35lp();
	dotnetfx35sp1lp();
#endif
#endif

#ifdef use_wic
	wic();
#endif

	// if no .netfx 4.0 is found, install the client (smallest)
#ifdef use_dotnetfx40
	if (not netfxinstalled(NetFx40Client, '') and not netfxinstalled(NetFx40Full, '')) then
		dotnetfx40client();
#endif

#ifdef use_dotnetfx45
	dotnetfx45(50); // min allowed version is 4.5.0
#endif

#ifdef use_dotnetfx46
	dotnetfx46(50); // min allowed version is 4.5.0
#endif

#ifdef use_dotnetfx47
	dotnetfx47(50); // min allowed version is 4.5.0
#endif

#ifdef use_vc2005
	vcredist2005('6'); // min allowed version is 6.0
#endif
#ifdef use_vc2008
	vcredist2008('9'); // min allowed version is 9.0
#endif
#ifdef use_vc2010
	vcredist2010('10'); // min allowed version is 10.0
#endif
#ifdef use_vc2012
	vcredist2012('11'); // min allowed version is 11.0
#endif
#ifdef use_vc2013
	//SetForceX86(true); // force 32-bit install of next products
	vcredist2013('12'); // min allowed version is 12.0
	//SetForceX86(false); // disable forced 32-bit install again
#endif
#ifdef use_vc2015
	vcredist2015('14'); // min allowed version is 14.0
#endif
#ifdef use_vc2017
	vcredist2017('14'); // min allowed version is 14.0
#endif

#ifdef use_directxruntime
	// extracts included setup file to temp folder so that we don't need to download it
	// and always runs directxruntime installer as we don't know how to check if it is required
	directxruntime();
#endif

#ifdef use_mdac28
	mdac28('2.7'); // min allowed version is 2.7
#endif
#ifdef use_jet4sp8
	jet4sp8('4.0.8015'); // min allowed version is 4.0.8015
#endif

#ifdef use_sqlcompact35sp2
	sqlcompact35sp2();
#endif

#ifdef use_sql2005express
	sql2005express();
#endif
#ifdef use_sql2008express
	sql2008express();
#endif

	Result := true;
end;



/////////////////////////////////////////////////////////////////////
function GetUninstallString(appId: String): String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\' + appId;
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;


/////////////////////////////////////////////////////////////////////
function IsUpgrade(appId: String): Boolean;
begin
  Result := (GetUninstallString(appId) <> '');
end;


/////////////////////////////////////////////////////////////////////
function UnInstallOldVersion(appId: String): Integer;
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
// Return Values:
// 1 - uninstall string is empty
// 2 - error executing the UnInstallString
// 3 - successfully executed the UnInstallString

  // default return value
  Result := 0;

  // get the uninstall string of the old app
  sUnInstallString := GetUninstallString(appId);
  if sUnInstallString <> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec('>', sUnInstallString + ' /qn','', SW_SHOW, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end else
    Result := 1;
end;

/////////////////////////////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
var
  i: Integer;
  appIdList: TStringList;
begin
  if (CurStep=ssInstall) then
  begin
    appIdList := TStringList.Create;
    appIdList.CommaText := OldAppIds;

    for i := 0 to appIdList.Count - 1 do
    begin
        UnInstallOldVersion(appIdList[i]);
    end;
  end;
end;