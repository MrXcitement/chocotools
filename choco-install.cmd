@rem choco-install -- Install a set of packages from a text file.
@rem Put each package on it's own line. This file can be started by pipeing
@rem the output of choco list -l to a file.

@rem Mike Barker <mike@thebarkers.com> March 14, 2014

@rem Copyright (c) 2014 Mike Barker

@rem Change log:

@rem 2014.03.14 * First release.

@echo off

if [%1] == [] goto usage
if [%1] == [/?] goto usage
if [%1] == [/help] goto usage

for %i in %1 do choco install %i

goto end

:usage
echo %0 filename
echo.
echo filename -- The name of a file that contains a list of packages
echo to be installed, one package per line.
echo.
