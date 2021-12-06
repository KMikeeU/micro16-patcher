@rem *******************************************************************************
@rem *      Download JD-CLI and set up git                                         *
@rem *******************************************************************************

@echo off
set "DIRNAME=%~dp0%"


mkdir lib
powershell -c "Invoke-WebRequest https://github.com/intoolswetrust/jd-cli/releases/download/jd-cli-1.2.0/jd-cli-1.2.0-dist.zip -OutFile %DIRNAME%lib\package.zip"
powershell Expand-Archive %DIRNAME%lib\package.zip -DestinationPath %DIRNAME%lib

@rem Setup directory for decompilation
mkdir src

@rem Load default src
xcopy "%DIRNAME%src_default\*" "%DIRNAME%src" /Y /i /s

cd %DIRNAME%src
git init
