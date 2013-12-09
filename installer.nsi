; Script generated by the HM NIS Edit Script Wizard.

RequestExecutionLevel user

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "MEGAsync"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "Mega Limited"
!define PRODUCT_WEB_SITE "http://www.mega.co.nz"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\MEGAsync.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"
!define CSIDL_STARTUP '0x7' ;Startup path
!define CSIDL_LOCALAPPDATA '0x1C' ;Local Application Data path

!define SRCDIR_MEGASYNC_X32 "Release_x32\MEGASync\release"
!define SRCDIR_MEGASHELLEXT_X32 "Release_x32\MEGAShellExt\release"
!define SRCDIR_MEGASHELLEXT_X64 "Release_x64\MEGAShellExt\release"

!include "MUI2.nsh"
!include "Library.nsh"
!include "UAC.nsh"
!include "x64.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "Source\MEGASync\SyncApp_1.ico"
!define MUI_UNICON "Source\MEGASync\SyncApp_1.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Settings
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "MEGAsync"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!define MUI_FINISHPAGE_RUN ;"$INSTDIR\MEGASync.exe"
!define MUI_FINISHPAGE_RUN_FUNCTION RunFunction

!define MUI_WELCOMEFINISHPAGE_BITMAP "installer\left_banner.bmp"
;!define MUI_FINISHPAGE_NOAUTOCLOSE

var ICONS_GROUP

; Installer pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "installer\terms.txt"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "Afrikaans"
!insertmacro MUI_LANGUAGE "Albanian"
!insertmacro MUI_LANGUAGE "Arabic"
!insertmacro MUI_LANGUAGE "Armenian"
!insertmacro MUI_LANGUAGE "Basque"
!insertmacro MUI_LANGUAGE "Belarusian"
!insertmacro MUI_LANGUAGE "Bosnian"
!insertmacro MUI_LANGUAGE "Breton"
!insertmacro MUI_LANGUAGE "Bulgarian"
!insertmacro MUI_LANGUAGE "Catalan"
!insertmacro MUI_LANGUAGE "Cibemba"
!insertmacro MUI_LANGUAGE "Croatian"
!insertmacro MUI_LANGUAGE "Czech"
!insertmacro MUI_LANGUAGE "Danish"
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "Efik"
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Esperanto"
!insertmacro MUI_LANGUAGE "Estonian"
!insertmacro MUI_LANGUAGE "Farsi"
!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "Galician"
!insertmacro MUI_LANGUAGE "Georgian"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Hebrew"
!insertmacro MUI_LANGUAGE "Hindi"
!insertmacro MUI_LANGUAGE "Hungarian"
!insertmacro MUI_LANGUAGE "Icelandic"
!insertmacro MUI_LANGUAGE "Igbo"
!insertmacro MUI_LANGUAGE "Indonesian"
!insertmacro MUI_LANGUAGE "Irish"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Khmer"
!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Kurdish"
!insertmacro MUI_LANGUAGE "Latvian"
!insertmacro MUI_LANGUAGE "Lithuanian"
!insertmacro MUI_LANGUAGE "Luxembourgish"
!insertmacro MUI_LANGUAGE "Macedonian"
!insertmacro MUI_LANGUAGE "Malagasy"
!insertmacro MUI_LANGUAGE "Malay"
!insertmacro MUI_LANGUAGE "Mongolian"
!insertmacro MUI_LANGUAGE "Norwegian"
!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
!insertmacro MUI_LANGUAGE "Polish"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "PortugueseBR"
!insertmacro MUI_LANGUAGE "Romanian"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "Serbian"
!insertmacro MUI_LANGUAGE "SerbianLatin"
!insertmacro MUI_LANGUAGE "Sesotho"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "Slovak"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "Spanish"
!insertmacro MUI_LANGUAGE "SpanishInternational"
!insertmacro MUI_LANGUAGE "Swahili"
!insertmacro MUI_LANGUAGE "Swedish"
!insertmacro MUI_LANGUAGE "Tamil"
!insertmacro MUI_LANGUAGE "Thai"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Turkish"
!insertmacro MUI_LANGUAGE "Twi"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Uyghur"
!insertmacro MUI_LANGUAGE "Uzbek"
!insertmacro MUI_LANGUAGE "Vietnamese"
!insertmacro MUI_LANGUAGE "Welsh"
!insertmacro MUI_LANGUAGE "Yoruba"
!insertmacro MUI_LANGUAGE "Zulu"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "MEGAsyncSetup.exe"
InstallDir "$PROGRAMFILES\MEGAsync"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails nevershow
ShowUnInstDetails nevershow

Function RunFunction
  ;Exec '"$WINDIR\explorer.exe" "$INSTDIR\MEGASync.exe"'
  ${UAC.CallFunctionAsUser} RunMegaSync
FunctionEnd

Function RunMegaSync
  Exec "$INSTDIR\MEGAsync.exe"
  Sleep 2000
FunctionEnd

Function RunExplorer
  ExecDos::exec /ASYNC /DETAILED /DISABLEFSR "explorer.exe"
FunctionEnd

Function .onInit
  UAC::RunElevated
  ${Switch} $0
  ${Case} 0
    ${IfThen} $1 = 1 ${|} Quit ${|} ;User process. The installer has finished. Quit.
    ${IfThen} $3 <> 0 ${|} ${Break} ${|} ;Admin process, continue the installation
    ${If} $1 = 3 ;RunAs completed successfully, but with a non-admin user
      ;MessageBox mb_YesNo|mb_IconExclamation|mb_TopMost|mb_SetForeground "This requires admin privileges, try again" /SD IDNO IDYES uac_tryagain IDNO 0
      Quit
    ${EndIf}
  ${Case} 1223
    ;MessageBox mb_IconStop|mb_TopMost|mb_SetForeground "This requires admin privileges, aborting!"
    Quit
  ${Default}
    MessageBox mb_IconStop|mb_TopMost|mb_SetForeground "This installer requires Administrator privileges. Error $0"
    Quit
  ${EndSwitch}
  
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "Principal" SEC01

  System::Call 'shell32::SHGetSpecialFolderPath(i $HWNDPARENT, t .r1, i ${CSIDL_LOCALAPPDATA}, i0)i.r0'
  StrCpy $INSTDIR "$1\MEGAsync"
  
  ;SetRebootFlag true
  SetOverwrite try

  ;VC++2010 Redistributable x32
  SetOutPath "$INSTDIR"
  
  ;VC++ 2010 SP1 x86
  ClearErrors
  ReadRegDword $R0 HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F0C3E5D1-1ADE-321E-8167-68EF0DE699A5}" "Version"
  IfErrors 0 VSRedist2010x86Installed
           ${Do}
               Pop $0
               IfErrors cslbl1
           ${Loop}
           cslbl1:
           ClearErrors
           inetc::get /caption "Microsoft Visual C++ 2010 SP1 Redistributable Package (x86)" "http://download.microsoft.com/download/C/6/D/C6D0FD4E-9E53-4897-9B91-836EBA2AACD3/vcredist_x86.exe" "$INSTDIR\vcredist_x86.exe" /end
           pop $0
           StrCmp $0 "OK" dlok1
           Abort
           dlok1:

           md5dll::GetMD5File "$INSTDIR\vcredist_x86.exe"
           Pop $0
           ;DetailPrint "md5: [$0]"
           StrCmp $0 "cede02d7af62449a2c38c49abecc0cd3" md5x32ok
                  MessageBox mb_IconStop|mb_TopMost|mb_SetForeground "Corrupt download, aborting!"
                  Abort
           md5x32ok:
           
           ;File "vcredist_x86.exe"
           ExecWait '"$INSTDIR\vcredist_x86.exe" /NoSetupVersionCheck /q'
           Delete "$INSTDIR\vcredist_x86.exe"
  VSRedist2010x86Installed:
  
  ${If} ${RunningX64}
        ;VC++ 2010 SP1 x64
        SetRegView 64
        ClearErrors
        ReadRegDword $R0 HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1D8E6291-B0D5-35EC-8441-6616F567A0F7}" "Version"
        IfErrors 0 VSRedist2010x64Installed
                ${Do}
                    Pop $0
                    IfErrors cslbl2
                ${Loop}
                cslbl2:
                ClearErrors
                inetc::get /caption "Microsoft Visual C++ 2010 SP1 Redistributable Package (x64)" "http://download.microsoft.com/download/A/8/0/A80747C3-41BD-45DF-B505-E9710D2744E0/vcredist_x64.exe" "$INSTDIR\vcredist_x64.exe" /end
                pop $0
                StrCmp $0 "OK" dlok2
                Abort
                dlok2:
                 
                md5dll::GetMD5File "$INSTDIR\vcredist_x64.exe"
                Pop $0
                ;DetailPrint "md5: [$0]"
                StrCmp $0 "cbe0b05c11d5d523c2af997d737c137b" md5x64ok
                       MessageBox mb_IconStop|mb_TopMost|mb_SetForeground "Corrupt download, aborting!"
                       Abort
                md5x64ok:
                 
                 
                 ExecWait '"$INSTDIR\vcredist_x64.exe" /NoSetupVersionCheck /q'
                 Delete "$INSTDIR\vcredist_x64.exe"
        VSRedist2010x64Installed:
        SetRegView 32
  ${EndIf}

  ExecDos::exec /DETAILED /DISABLEFSR "taskkill /f /IM MEGAsync.exe"
  
  ;x86_32 files
  File "${SRCDIR_MEGASYNC_X32}\pthreadVC2.dll"
  File "${SRCDIR_MEGASYNC_X32}\FreeImage.dll"
  File "${SRCDIR_MEGASYNC_X32}\QtCore4.dll"
  File "${SRCDIR_MEGASYNC_X32}\QtGui4.dll"
  File "${SRCDIR_MEGASYNC_X32}\QtNetwork4.dll"
  ;File /oname=ShellExtX32.dll "${SRCDIR_MEGASHELLEXT_X32}\MegaShellExt.dll"

  SetOutPath "$INSTDIR\imageformats"
  File "${SRCDIR_MEGASYNC_X32}\imageformats\qico4.dll"
  
  SetOutPath "$INSTDIR"
  SetOverwrite on
  AllowSkipFiles off
  File "${SRCDIR_MEGASYNC_X32}\MEGASync.exe"
  
  ExecDos::exec /DETAILED /DISABLEFSR "taskkill /f /IM explorer.exe"

  IfFileExists "$INSTDIR\ShellExtX32.dll" 0 new_installation_x32
        GetTempFileName $0
        Delete $0
        Rename "$INSTDIR\ShellExtX32.dll" $0
        Delete /REBOOTOK $0
  new_installation_x32:
  
  ; Register shell extension 1 (x86_32)
  ;ExecDos::exec /DETAILED /DISABLEFSR '%WINDIR%\SysWoW64\regsvr32.exe "$INSTDIR\ShellExtX32.dll"'
  !define LIBRARY_COM
  !define LIBRARY_SHELL_EXTENSION
  !insertmacro InstallLib REGDLL NOTSHARED REBOOT_NOTPROTECTED "${SRCDIR_MEGASHELLEXT_X32}\MegaShellExt.dll" "$INSTDIR\ShellExtX32.dll" "$INSTDIR"
  !undef LIBRARY_COM
  !undef LIBRARY_SHELL_EXTENSION

  ${If} ${RunningX64}
        IfFileExists "$INSTDIR\ShellExtX64.dll" 0 new_installation_x64
                GetTempFileName $0
                Delete $0
                Rename "$INSTDIR\ShellExtX64.dll" $0
                Delete /REBOOTOK $0
        new_installation_x64:
  
        ; Register shell extension 1 (x86_64)
        ;ExecDos::exec /DETAILED /DISABLEFSR '%WINDIR%\System32\regsvr32.exe "$INSTDIR\x64\ShellExtX64.dll"'
        !define LIBRARY_X64
        !define LIBRARY_COM
        !define LIBRARY_SHELL_EXTENSION
        !insertmacro InstallLib REGDLL NOTSHARED REBOOT_NOTPROTECTED "${SRCDIR_MEGASHELLEXT_X64}\MegaShellExt.dll" "$INSTDIR\ShellExtX64.dll" "$INSTDIR"
        !undef LIBRARY_X64
        !undef LIBRARY_COM
        !undef LIBRARY_SHELL_EXTENSION
  ${EndIf}
  
  ${UAC.CallFunctionAsUser} RunExplorer
   
  SetRebootFlag false
 ;ExecDos::exec /ASYNC /DETAILED /DISABLEFSR "explorer.exe"
 ;${DisableX64FSRedirection}
 ;ExecWait "taskkill /f /IM explorer.exe"
 ;Exec "explorer.exe"
 ;${EnableX64FSRedirection}

  ; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\MEGAsync.lnk" "$INSTDIR\MEGAsync.exe"
  CreateShortCut "$DESKTOP\MEGAsync.lnk" "$INSTDIR\MEGAsync.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -AdditionalIcons
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  WriteIniStr "$INSTDIR\MEGA Website.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\MEGA Website.lnk" "$INSTDIR\MEGA Website.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk" "$INSTDIR\uninst.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\MEGAsync.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\MEGAsync.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "La desinstalaci�n de $(^Name) finaliz� satisfactoriamente."
FunctionEnd

Function un.onInit
UAC::RunElevated
  ${Switch} $0
  ${Case} 0
    ${IfThen} $1 = 1 ${|} Quit ${|} ;User process. The installer has finished. Quit.
    ${IfThen} $3 <> 0 ${|} ${Break} ${|} ;Admin process, continue the installation
    ${If} $1 = 3 ;RunAs completed successfully, but with a non-admin user
      ;MessageBox mb_YesNo|mb_IconExclamation|mb_TopMost|mb_SetForeground "This requires admin privileges, try again" /SD IDNO IDYES uac_tryagain IDNO 0
      Quit
    ${EndIf}
  ${Case} 1223
    ;MessageBox mb_IconStop|mb_TopMost|mb_SetForeground "This requires admin privileges, aborting!"
    Quit
  ${Default}
    MessageBox mb_IconStop|mb_TopMost|mb_SetForeground "This installer requires Administrator privileges. Error $0"
    Quit
  ${EndSwitch}

!insertmacro MUI_UNGETLANGUAGE
;  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "�Est� completamente seguro que desea desinstalar $(^Name) junto con todos sus componentes?" IDYES +2
;  Abort
FunctionEnd

Section Uninstall
  ExecDos::exec /DETAILED "taskkill /f /IM MEGASync.exe"
  !insertmacro MUI_STARTMENU_GETFOLDER "Application" $ICONS_GROUP
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\QtNetwork4.dll"
  Delete "$INSTDIR\QtGui4.dll"
  Delete "$INSTDIR\QtCore4.dll"
  Delete "$INSTDIR\pthreadVC2.dll"
  Delete "$INSTDIR\FreeImage.dll"
  Delete "$INSTDIR\imageformats\qico4.dll"
  Delete "$INSTDIR\MEGAsync.exe"

  ;ExecDos::exec /DETAILED /DISABLEFSR '%WINDIR%\SysWoW64\regsvr32.exe /u "$INSTDIR\ShellExtX32.dll"'
  ;${If} ${RunningX64}
  ;  ExecDos::exec /DETAILED /DISABLEFSR '%WINDIR%\System32\regsvr32.exe /u "$INSTDIR\ShellExtX64.dll"'
  ;${EndIf}
  
  !define LIBRARY_COM
  !define LIBRARY_SHELL_EXTENSION
  !insertmacro UnInstallLib REGDLL NOTSHARED NOREMOVE "$INSTDIR\ShellExtX32.dll"
  !undef LIBRARY_COM
  !undef LIBRARY_SHELL_EXTENSION
  
  GetTempFileName $0
  Delete $0
  Rename "$INSTDIR\ShellExtX32.dll" $0
  Delete /REBOOTOK $0
  
  ${If} ${RunningX64}
        !define LIBRARY_X64
        !define LIBRARY_COM
        !define LIBRARY_SHELL_EXTENSION
        !insertmacro UnInstallLib REGDLL NOTSHARED NOREMOVE "$INSTDIR\ShellExtX64.dll"
        !undef LIBRARY_X64
        !undef LIBRARY_COM
        !undef LIBRARY_SHELL_EXTENSION

        GetTempFileName $0
        Delete $0
        Rename "$INSTDIR\ShellExtX64.dll" $0
        Delete /REBOOTOK $0
  ${EndIf}
  
  Delete "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\MEGA Website.lnk"
  Delete "$INSTDIR\MEGA Website.url"
  Delete "$DESKTOP\MEGAsync.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\MEGAsync.lnk"

  System::Call 'shell32::SHGetSpecialFolderPath(i $HWNDPARENT, t .r1, i ${CSIDL_STARTUP}, i0)i.r0'
  Delete "$1\MEGAsync.lnk"

  RMDir "$SMPROGRAMS\$ICONS_GROUP"
  RMDir "$INSTDIR\imageformats"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true

  SetRebootFlag false
SectionEnd
