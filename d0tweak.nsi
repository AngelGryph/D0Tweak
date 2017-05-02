#***************************************************
#
# Nullsoft SuperPiMP (NSIS) Script File
# Generated by superPiMP wizard
# [http://manavmax.tripod.com/]
#
# (C)2001 Manav Rathi [manavmax@rediffmail.com]
#
#***************************************************

# [Installer Attributes]
Name "D0Tweak v17"
OutFile "D0Tweak_v17.exe"
Caption ""
BrandingText ""

# [Additional Installer Settings ]
ShowInstDetails show
AutoCloseWindow false
SilentInstall normal
CRCCheck on
SetCompress auto
SetCompressor bzip2
SetDatablockOptimize on
SetOverwrite on

# [Background Gradient]
BGGradient 996633 ffcc33 FFFFFF

# [Files]
Section "default"
SetOutPath $INSTDIR
File "g:\D0Tweak\Setup-D0Tweak.exe"
File "g:\D0Tweak\Setup-D0Tweak.tp2"
File /r "g:\D0Tweak\D0Tweak"
SectionEnd

# [Directory Selection]
InstallDir "$PROGRAMFILES\BG2 - SoA\"

# [Finding the BGII install path]
InstallDirRegKey HKLM \
                 "Software\Microsoft\Windows\CurrentVersion\App Paths\BG2Main.Exe" \
                 "Path"


# DirShow show
DirText "Select your default BGII - SoA directory."

;called when the installer is nearly finished initializing
Function .onInit

;message box
MessageBox MB_YESNO "This will install D0Tweak v17. Continue?" IDYES NoAbort
Abort
NoAbort:
FunctionEnd

;called when the user hits the 'cancel' button
Function .onUserAbort
MessageBox MB_YESNO "Abort install?" IDYES NoCancelAbort
Abort
NoCancelAbort:
FunctionEnd

;called when the install was successful
Function .onInstSuccess
Exec "$INSTDIR\Setup-D0Tweak.exe"
FunctionEnd

#eof!
