set scalefactor=2

@echo off && cls
set sf=%scalefactor%
echo Starting Waifu (%sf%x), please wait...
set arg1=%1
set arg2="%CD%\%~n1_w%sf%x%~x1"
cd %CD%
C:\Waifu\waifu2x-ncnn-vulkan.exe -i %arg1% -o %arg2% -s %sf% -t 400 -v
cls && start mspaint "%~n1_w%sf%x%~x1"
set mbox="Add-Type -AssemblyName PresentationFramework;"
PowerShell -Command "%mbox%[System.Windows.MessageBox]::Show('Saved to file %arg2%')"