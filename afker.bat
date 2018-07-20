@if (@CodeSection == @Batch) @then

@echo off
    set SendKeys=CScript //nologo //E:JScript "%~F0"
    cls
    color 0a
    :loop
        %SendKeys% "{NUMLOCK}"
	      %SendKeys% "{NUMLOCK}"
        timeout /t 290 /nobreak >nul
    goto :loop
@end

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
