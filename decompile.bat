@rem *******************************************************************************
@rem *      Decompile original jar to source                                       *
@rem *******************************************************************************

@echo off

@rem This is the path to IntelliJ IDEA
set "IDEA_PATH=C:\Program Files\JetBrains\IntelliJ IDEA 2021.2.3"



@rem Variables
set "FERNFLOWER=%IDEA_PATH%\plugins\java-decompiler\lib\java-decompiler.jar"
set "DIRNAME=%~dp0%"


@rem Fernflower magic
java -cp "%FERNFLOWER%" org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler -hdc=0 -dgs=1 -rsy=1 -rbr=1 -lit=1 -nls=1 -mpm=60 "%DIRNAME%micro16-simulator.jar" "%DIRNAME%src"

@rem Decompile jar
java -jar "%DIRNAME%lib\jd-cli.jar" "%DIRNAME%src\micro16-simulator.jar" -od "%DIRNAME%src"

@rem Open IntelliJ IDEA
"%IDEA_PATH%\bin\idea64.exe" %DIRNAME%\src
