@ECHO OFF

rem build init
set project=DirectShowFilters
call BuildInit.bat %1

rem build
echo.
echo Building %project%
set logger=/l:XmlFileLogger,"BuildReport\MSBuild.ExtensionPack.Loggers.dll";logfile=BUILD_REPORT_%project%.xml
"%WINDIR%\Microsoft.NET\Framework\v4.0.30319\MSBUILD.exe" %logger% /target:Rebuild "..\DirectShowFilters\Filters.sln" >> %log%
