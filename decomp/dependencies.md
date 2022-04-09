## Installing Dependencies

#### Dependencies:
1. [Ghidra](https://github.com/NationalSecurityAgency/ghidra): Software Reverse Engineering tools
2. [GameCubeLoader](https://github.com/Cuyler36/Ghidra-GameCube-Loader) for Ghidra: extension to add the ability to process Wii .dol or .rel files.
3. [Petari](https://github.com/shibbo/Petari) or whatever decompilation on which you will be working.
4. Python 3
5. [CodeWarrior Demangler](https://github.com/matt-kempster/mips_to_c/blob/master/src/demangle_codewarrior.py): Demangles symbols such as function names and parameters outputted by CodeWarrior.
6. Obviously a copy of the game we shall be decompiling, in this case Super Mario Galaxy 1.
7. [Dolphin Emulator](https://dolphin-emu.org): This will be used for extracting the filesystem of our game.

Additionally, if you are on Unix based systems, you will need [Wine](https://winehq.org)

#### Installation:
##### Ghidra:
1. Downlaod Ghidra from the [NSA Repoistory](https://github.com/NationalSecurityAgency/ghidra/releases)
2. Extract the zip file to a directory, probably ``~/ghidra`` or ``C:\Users\<you>\ghidra``

##### Ghidra GameCubeLoader:
1. Download GameCubeLoader from the Releases section and move the extension into ``<ghidra_folder>/Extensions/Ghidra``
2. Run Ghidra via ``ghidraRun`` or ``ghidraRun.bat``
3. In the Ghidra Project manager, select ``File -> Install Extensions``. If the name of GameCubeLoader is red, you will need to edit the extension.properties file in the root of the extension zip, changing the version to match whatever version of Ghidra you are using. Select the checkmark next to name, and when prompted to, restart Ghidra.

##### Petari:
1. Clone Petari: ``git clone https://github.com/shibbo/petari.git``

##### CodeWarrior Demangler:
1. Download [the file](https://github.com/matt-kempster/mips_to_c/blob/master/src/demangle_codewarrior.py) either manually or with ``curl https://raw.githubusercontent.com/matt-kempster/mips_to_c/master/src/demangle_codewarrior.py -o demangle_codewarrior.py``

##### Dolphin Emulator:
1. Download and install from the [Dolphin Emulator](https://dolphin-emu.org) site.

[Back to Table of Contents](/decomp/guide)  
[Next: Setup](/decomp/setup)
