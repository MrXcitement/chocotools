@rem choco-ver -- Display the version information as a single line per package.

@rem Mike Barker <mike@thebarkers.com>
@rem March 14, 2014

@rem Copyright (c) 2014 Mike Barker

@rem Change log:
@rem 2014.03.14
@rem * First release.

@echo off

set CHOCO_CMD="c:\programdata\chocolatey\chocolateyinstall\chocolatey.ps1"
set CHOCO_VER=" Version All | Format-Table name, found, latest, verMessage"

@powershell -NoProfile -ExecutionPolicy unrestricted %CHOCO_CMD% %CHOCO_VER%