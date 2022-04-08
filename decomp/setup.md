## Setup

#### Dependencies:
1. [Ghidra](https://github.com/NationalSecurityAgency/ghidra): Software Reverse Engineering tools
2. [GameCubeLoader](https://github.com/Cuyler36/Ghidra-GameCube-Loader) for Ghidra: extension to add the ability to process Wii .dol or .rel files.
3. [Petari](https://github.com/shibbo/Petari) or whatever decompilation on which you will be working.
4. Python 3
5. [CodeWarrior Demangler](https://github.com/matt-kempster/mips_to_c/blob/master/src/demangle_codewarrior.py) Demangles symbols such as function names and parameters outputted by CodeWarrior.
6. Obviously a copy of the game we shall be decompiling, in this case Super Mario Galaxy 1.
7. [Dolphin Emulator](https://dolphin-emu.org): This will be used for extracting the filesystem of our game.

Additionally, if you are on Unix based systems, you will need [Wine](https://winehq.org)

#### Installation:
1. Download Ghidra from the Releases section. Extract the zip to a directory, probably ``~/ghidra`` for Unix systems or ``C:/Users/<your_username>/ghidra`` for Windows.
3. Download GameCubeLoader from the Releases section and move the extension into ``<ghidra_folder>/Extensions/Ghidra``
4. Run Ghidra via ``ghidraRun`` or ``ghidraRun.bat``
5. In the Ghidra Project manager, select ``File -> Install Extensions``. If the name of GameCubeLoader is red, you will need to edit the extension.properties file in the root of the extension, changing the version to match whatever version of Ghidra you are using. Select the checkmark next to name, and when prompted to, restart Ghidra.
6. Clone Petari: ``git clone https://github.com/shibbo/petari.git``
7. Now create a new project: ``File -> New Project``. Name it what you want, and put it where you wish.
8. In Dolphin, right-click the Super Mario Galaxy and select ``Properties``. In the window that pops up, go to ``Filesystem``. Select the disc, and extract the entire disc. Go to where you extracted the game, and you will find a file in ``DATA/sys/main.dol``. This is the main executable of the game which we need. Copy it to the root of the Petari project, ad rename it baserom.dol

todo
