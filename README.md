# Micro16-Patcher
Modding framework for the micro16 simulator

## Requirements
- java
- git

## Building
### Setup
1. Clone this repository
2. Download the official micro16-simulator.jar from tuwel and move it into the project root
3. Run setup.bat/setup.sh, this will download all required libraries
4. Edit decompile.bat/decompile.sh and replace the IDEA_PATH with the path to your IDEA installation
5. Run decompile.bat/decompile.sh
6. Apply all default patches by running ``git apply ../patches/*`` from the newly created src directory (this may not work properly within cmd, use (git) bash)

### Compile
Once you have applied the patches in step 7 of Setup. You are ready to compile the project. This step depends on your IDE

#### IntelliJ
##### Debugging
Simply create a new run configuration using micro16sdk.Main as a Main class, don't forget to specify your Project's Java SDK!

##### Building
Open your Project Settings, add a new Artifact JAR "from modules with dependencies" select the Main class and build the artifact

## Usage
The current patch loads the file provided as the first command line argument as instruction code. For example:

```
$ java -jar micro16patcher.jar "code.m16"
```

will open the micro16 simulator with the code contained in the file code.m16

### VSCode Task
Include this VSCode Task in your VSCode project to run Micro16 within VSCode. Make sure to add the modified jar into your new project root.

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Run with Micro16",
            "type": "shell",
            "command": "java -jar ${workspaceFolder}/micro16patcher.jar \"${file}\"",
            "problemMatcher": [],
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}
```