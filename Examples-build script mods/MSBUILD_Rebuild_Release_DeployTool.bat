@ECHO OFF

rem build init
set project=DeployTool
call BuildInit.bat %1

echo.
echo Building MediaPortal...
set logger=/l:XmlFileLogger,"BuildReport\MSBuild.ExtensionPack.Loggers.dll";logfile=BUILD_REPORT_DeployTool.xml
"%WINDIR%\Microsoft.NET\Framework\v4.0.30319\MSBUILD.exe" %logger% /target:Rebuild /p:ALToolPath="%WINDOWS_SDK%\Bin" /p:TargetFramework=v3.5 /property:Configuration=%BUILD_TYPE%;Platform=x86 "%MediaPortal%\..\Tools\MediaPortal.DeployTool\MediaPortal.DeployTool.sln" >> %log%
