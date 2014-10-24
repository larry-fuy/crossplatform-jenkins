REM assuming chocolatey is installed. Otherwise
REM (install chocolatey) This is a bug in powershell v2. So just download the predefined package
type nul > c:\vagrant\install_log.txt
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))"  2>&1 > c:\vagrant\install_log.txt 
SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
REM install required softwares
choco install svn
set PATH=%PATH%;%PROGRAMFILES(X86)%\Subversion\bin
choco install vcexpress2010
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
choco install ActivePerl
set PATH=C:\Perl64\bin;%PATH%
REM set firewall off
netsh advfirewall set AllProfiles state off 

