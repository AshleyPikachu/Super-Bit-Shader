# Super-Bit-Shader
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes. Also, there are options for the "Color" versions of consoles like GBC, NGPC, and WSC with the goal of creating a more accurate experience.
  
**Supported Consoles**
* Game Boy / Game Boy Color (DoubleCherryGB / TGB Dual)
* Neo Geo Pocket / Neo Geo Pocket Color: (Beetle NeoPop / RACE)
* Pokémon Mini (PokeMini)
* Wonderswan / Wonderswan Color (Beetle Cygne)
* Virtual Boy (Beetle VB)

**Paritally Supported Cores**
* Game Boy / Game Boy Color (SameBoy) - Game Boy Color and Super Game Boy Games

-----------------------------------------------------------------------------------------------------------------------
**Shader Versions**
-----------------------------------------------------------------------------------------------------------------------
* **Regular**: SBS applied to the console of choice with no modifications to the output.
* **Mixed-Frames**: SBS + Mixed-Frames, use this for intentional ghosting / transparency. Highly recommended as the default.
* **Pixel-AA**: Anti-Aliasising options included with all consoles for non integer scale displays.
* **Color Console Presets**: "1. Game Boy Color", "1. Neo Geo Pocket Color" and "1. Wonderswan Color (Crystal)" should be assigned as a "Core Override".
-----------------------------------------------------------------------------------------------------------------------
**Screenshots**
-----------------------------------------------------------------------------------------------------------------------
* Game Boy - [Fydo's Magic Tiles](https://ohnotomsutton.itch.io/fydos-magic-tiles)
![image](https://github.com/user-attachments/assets/6b493a3d-9139-429d-90b4-e9d0534f161b)

* Neo Geo Pocket - My Own Artwork
![image](https://github.com/user-attachments/assets/0590a254-e07d-41df-847b-d4563b9d5576)

* Virtual Boy [VUENgine Platformer Demo](https://www.virtual-boy.com/homebrew/vuengine-platformer-demo/), [Fishbone](https://www.virtual-boy.com/homebrew/fishbone/), [Elevated Speed](https://www.virtual-boy.com/homebrew/elevated-speed/), and [Multi Color Demo](https://www.virtual-boy.com/homebrew/multi-color-demo/)
![image](https://github.com/user-attachments/assets/2d75ece2-f45d-4ead-84f8-a9dc9b19029f)

* Wonderswan - My Own Artwork
![image](https://github.com/user-attachments/assets/b13dfe01-a28c-4048-be48-199d694cc297)

* Pokémon Mini - [Cortex](https://www.pokemon-mini.net/games/cortex/)
![image](https://github.com/user-attachments/assets/5b6ab960-aef4-4088-a4ec-6aca12031e4a)

-----------------------------------------------------------------------------------------------------------------------
**Install Instructions**
-----------------------------------------------------------------------------------------------------------------------
🟢**Part 1: Placing your Files**
1. First download and install [Retroarch](https://www.retroarch.com/) and familiarize yourself with [Shaders](https://www.youtube.com/watch?v=YyZ6IrmsNgY).
2. Download the contents of this Github and place the "Super-Bit-Shader 3.5" folder inside the "Retroarch/Shaders" folder.
3. With SBS 3.5 now inside that folder the shader is now ready to be seen by Retroarch.

🟣**Part 2: Preparing Retroarch**
1. Launch Retroarch and go to the following menus "Settings" -> "Video" -> "Output" -> "Video - Set Video Driver to GL" to use SBS.

🟠**Part 3: Loading Super-Bit-Shader**
1. Load a game inside Retroarch using a supported core above.
2. With the game loaded press F1 (PC) to bring up the "Quick Menu", from there scroll to "Shaders".
3. Select it and choose "Load Preset" to view and enter the "Super-Bit-Shader 3.5" folder.
4. Once inside choose your console and shader type, if unsure select "Mixed-Frames".
5. Pick the shader color of your choice, It's a "GLSLP" file.
6. You now have your color picked for your game, on to the next part.

🔵**Part 4: Core Options**
1. Now with your shader selected use backspace (PC) again to head back to the "Main Menu".
2. From the "Main Menu" select "Quick Menu" again and locate "Core Options".
3. "Core Options" are settings per core, and some of them need to be adjusted for SBS to work.

🔵**Part 4: Core Options to Modify**
* DoubleCherryGB: GBC Color Correction "OFF", then use "1. Game Boy Color." for GBC color correction.
* SameBoy: Only use the "1. Game Boy Color" preset. Set GBC Color Correction "OFF".
* PokeMini: Palette = Black & White.
* Beetle VB: Palette = Black & White.
* Beetle Cygne: Color Palette = Grayscale, Color Depth - Thousands (16-bit). Turn off "60hz Mode" when using Mixed-Frames / high FPS.

🟡**Part 5: SAVE YOUR WORK**
1. Retroarch on its own will not recall shaders automatically.
2. Head back to the "Main Menu" using backspace (PC) and select the "Quick Menu" one last time.
3. Scroll down to "Overrides" and select it.
4. Choose Save "Game Override" or "Core Override" to have Super-Bit-Shader launch every session.
5. Use "1. Game Boy Color", "1. Neo Geo Pocket Color" and "1. Wonderswan Color (Crystal)" as those consoles "Core Override". 
6. Congratulations, you are all set to use Super-Bit-Shader! Press F1 (PC) to close the Retroarch menu and get back to the game.

-----------------------------------------------------------------------------------------------------------------------
PCVR Setup - Virtual Boy
-----------------------------------------------------------------------------------------------------------------------
🔴**Prerequisites**
1. A VR headset paired to a PC
2. A controller connected to your PC / A wireless controller connected to your VR headset
3. A Super-Bit-Shader color palette selected ahead of time.
4. Bigscreen Beta Experience. [Steam](https://store.steampowered.com/app/457550/Bigscreen_Beta/), [Rift Store](https://www.meta.com/experiences/pcvr/bigscreen-beta/1018613041536358/) or [Quest Store](https://www.meta.com/experiences/bigscreen-beta/2497738113633933/).

🔴**Setting Up Retroarch**
1. Create a shortcut to Retroarch on your desktop and open it.
2. Start a Virtual Boy game and go into "Core Options" to set the "3D Mode" to "Side-by-Side".
3. Go all the way back to the "Main Menu" and select "Settings" below it.
4. From "Settings" pick "Video" -> "Scaling" -> "Integer Scale ON" -> "Aspect Ratio 16:9".
5. Now backout of "Video" from "Settings" and select "Input", once there proceed to "Hotkeys".
6. In "Hotkeys" look for "Menu Toggle (Controller Combo)", set it to "L3 + R3".
7. Finally return to the "Quick Menu" and Save these changes as a "Core Override" and close your game.

🔴**Using Retroarch in VR**
1. Put your PC / Wireless controller in arms reach so you can grab it with the headset on.
2. Inside VR launch Bigscreen, a wired connection will show your desktop on automatically.
3. Choose your Environment, I recommend the "Retro Cinema" for eye comfort.
4. Now using the VR controllers as pointers launch Retroarch then let go of your VR controllers.
5. Load a Virtual Boy game using the PC controller and put the PC controller in your lap.
6. Grab your VR controllers and go into the Bigscreen menu. From there press "My Room" and go to the "Desktop" category.
8. Inside "Desktop" you will find a "2D" button, press it until it says "SBS" for Side by Side 3D.
9. You are now ready to play Virtual Boy in 3D, be sure to turn off SBS before re-entering the Retroarch Menu.

![image](https://github.com/user-attachments/assets/db362941-c020-41bb-b3e4-72bbdab7de92)

-----------------------------------------------------------------------------------------------------------------------
Google Cardboard Setup - Virtual Boy
-----------------------------------------------------------------------------------------------------------------------
🔵**Prerequisites**
1. A smartphone with Bluetooth
2. A wireless controller paired to your device ahead of time.
3. A Super-Bit-Shader color palette selected ahead of time.
4. A Google Cardboard compatible headset.

🔵**Setting Up Retroarch** - Touch UI
1. Install Retroarch on your smartphone and launch it.
2. Start a Virtual Boy game, and using the touchscreen return to the "Quick Menu".
3. Locate "On-Screen Overlay" and toggle "Display Overlay" to off.
4. Now press the Settings Gear to enter "Settings".
5. In "Settings" pick "Input" and once there proceed to "Hotkeys".
6. In "Hotkeys" look for "Menu Toggle (Controller Combo)", set it to "L3 + R3".
7. Next press the Home icon to return to the "Main Menu" and select "Quick Menu" again.
8. Inside "Quick Menu" select "Core Options" and set the "3D Mode" to "Side-by-Side".
10. From "Quick Menu" save these changes as a "Core Override" and head back to the "Main Menu".
11. From the "Main Menu" press the "Quit" button to properly close Retroarch to save your work.
12. Now reboot the program and load your game of choice to play.
13. Finally with the game running and a controller paired ahead of time, put the phone in the Google Cardboard to play.

**NOTE**: "Core Options" cannot adjust Interpupillary Distance (IPD), make sure your Google Cardboard is fitted for Retroarch or the phone the can be adjusted.

-----------------------------------------------------------------------------------------------------------------------
🐍Red-Viper
-----------------------------------------------------------------------------------------------------------------------
[Red-Viper](https://github.com/skyfloogle/red-viper) is a Virtual Boy Emulator for the 3DS by SkyFloogle.

The program just got color palette support, to use it replace the included "rv_config.ini" file with a color palette of your choice.
* Directory: "RootofSD\config\red-viper"

Keep in mind when this entire file is replaced it wipes any preconfigured content. If you don't want to do that open up the ini file inside of a notepad program and replace the following lines.

* [vbopt]
* multicol=1
* tint=-1
* multitint0=-15986688
* multitint1=-74240
* multitint2=-10289724
* multitint3=-5571585
* tintscale1=2.000000
* tintscale2=1.425000
* tintscale3=2.000000

-----------------------------------------------------------------------------------------------------------------------
**How to Create Your Own Palette**
-----------------------------------------------------------------------------------------------------------------------
Prerequisites
1. A Photo editor with Hex Colors and the option to modify Hue, Chroma and Saturation.
2. This tool to [Convert Hex Color to GLSL vec3](https://airtightinteractive.com/util/hex-to-glsl/)
3. The ability to copy, edit and save the glsl files included in this github.

Guide
1. First create a color palette in a program of your choosing. This github includes sample sheets for each palette.
2. When making a Palette keep the light levels around the same as the grayscale templates with the exception being Virtual Boy.
3. Feel free to experiment with Chroma, Saturation, and Hue.
4. More details are available in each consoles glsl files.

-----------------------------------------------------------------------------------------------------------------------
**Credits**
-----------------------------------------------------------------------------------------------------------------------
* **Version 1.0**: Testing and calibrating, color selection by Digiflower5 (AshleyPikachu). Base code by hunterk.
* **Version 2.0-3.5**: Testing, calibrating, color selection, code modifications, and comments by Digiflower5 (AshleyPikachu)
* **Special Thanks** to Nispero & EADMASTER for inspiring this project.

-----------------------------------------------------------------------------------------------------------------------
**Licenses** - Check the GLSL files for full details
-----------------------------------------------------------------------------------------------------------------------
* "Super-Bit-Shader" by Ashley the Pikachu (Digiflower5) and hunterk is Public Domain.
* "pixel-aa / to_lin" shaders by fishku are Public Domain.
* "mixed-frames" shader by jdgleaver is GNU General Public License.
* "gba-color" by Pokefan531 and hunterk is Public Domain.
* "gbc-color" by Pokefan531 and hunterk is Public Domain.
* "gdapt" by Sp00kyFox does not have a license listed.
* All seperate supporting shaders included with SBS are from Retroarch's Online Updater unmodified and have their own licenses.

-----------------------------------------------------------------------------------------------------------------------
**Extra Notes & Tips**
-----------------------------------------------------------------------------------------------------------------------
* Older releases of Super-Bit-Shader are included on this Github for archival purposes.
* You can use Overrides to set your video driver per core if you need another display driver.
