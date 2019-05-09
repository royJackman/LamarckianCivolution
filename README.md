# LamarckianCivolution

## Getting started

Because of copyright restrictions, this program requies a legal copy of Sid Meier's Civilization IV, along with both expansion packs, Rise & Fall and Gathering Storm. These are required to perform some of the functions used in the program.

Next, make sure you have python 3.4+ installed, then please run `pip install numpy keras`

Finally, make sure that you have Lua 5.3 installed, no additional libraries required.

## File Distribution

Before running the code, please replace the VikingScenario.lua file from the `...\Steam\steamapps\common\Sid Meier's Civilization VI\DLC\VikingsScenario\Scripts` folder with the one in this repository.

Additionally, please copy and paste all the python files (and the models folder) into the `...\Steam\steamapps\common\Sid Meier's Civilization VI\Base\Binaries\Win64Steam` folder (this name may be a bit different on Unix systems).

## Running the code

Assuming the above has been performed correctly, the test environment should be accessible from the Single Player > Scenarios option on the main menu. 

## Common issues

Before running the code, we recommend a forced update of the game and its expansions to make sure the latest build has been installed and that there are no conflicting code blocks in the installed build.

#### os/io Libraries Not Accessible

If the lua code in the game is returning an error that you are trying to index a nil value on lines that reference the os or io libraries, this means the game needs to be run as administrator.