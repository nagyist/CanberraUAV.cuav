; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CanberraUAV Imaging"
; Note MyAppVersion is defined in cuavWinBuild.bat
; #define MyAppVersion {code:GetVersion}
#define MyAppPublisher "CanberraUAV"
#define MyAppURL "http://CanberraUAV.github.io/cuav"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{328AE3B2-C026-423A-866F-35A0EC5195D9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=..\COPYING.txt
OutputBaseFilename=cuavSetup-{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[InstallDelete]
Type: filesandordirs; Name: {pf}\{#MyAppName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\dist\cuav\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Geosearch"; Filename: "{app}\geosearch.exe"
Name: "{group}\Geotagger"; Filename: "{app}\geotag.exe"
Name: "{group}\Documentation"; Filename: "http://CanberraUAV.github.io/cuav/"
Name: "{group}\CanberraUAV Website"; Filename: "http://canberrauav.org.au"

