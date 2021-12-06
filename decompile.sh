# *******************************************************************************
# *      Decompile original jar to source                                       *
# *******************************************************************************


IDEA_PATH='/mnt/c/Program Files/JetBrains/IntelliJ IDEA 2021.2.3'


FERNFLOWER="${IDEA_PATH}/plugins/java-decompiler/lib/java-decompiler.jar"


# Fernflower magic
java -cp "$FERNFLOWER" org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler -hdc=0 -dgs=1 -rsy=1 -rbr=1 -lit=1 -nls=1 -mpm=60 "./micro16-simulator.jar" "./src"

# Decompile to source
java -jar "./lib/jd-cli.jar" "./src/micro16-simulator.jar" -od "./src"
