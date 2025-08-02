# Super-Bit-Shader
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes. Also, there are options for the "Color" versions of consoles like GBC, NGPC, and WSC with the goal of creating a more accurate experience.
  
**Supported Consoles**
* Game Boy / Game Boy Color (DoubleCherryGB / TGB Dual)
* Neo Geo Pocket / Neo Geo Pocket Color: (Beetle NeoPop / RACE)
* Pokémon Mini (PokeMini)
* Wonderswan / Wonderswan Color (Beetle Cygne)
* Virtual Boy (Beetle VB) / (Red-Viper)

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
![image](https://github.com/user-attachments/assets/f1ffd0a5-73f1-420b-b7ae-e844013211ce)

* Wonderswan - My Own Artwork
![image](https://github.com/user-attachments/assets/b13dfe01-a28c-4048-be48-199d694cc297)

* Pokémon Mini - [Cortex](https://www.pokemon-mini.net/games/cortex/)
![image](https://github.com/user-attachments/assets/5b6ab960-aef4-4088-a4ec-6aca12031e4a)

-----------------------------------------------------------------------------------------------------------------------
**Retroarch Shader Install Instructions**
-----------------------------------------------------------------------------------------------------------------------
🟢**Part 1: Retroarch Setup**
1. First download and install [Retroarch](https://www.retroarch.com/) and familiarize yourself with [Shaders](https://www.youtube.com/watch?v=YyZ6IrmsNgY).
2. Launch Retroarch and go to "Settings" -> "Video" -> "Output" -> "Video - Set Video Driver to GL".
3. Download a release version and place the "Retroarch.SBS.3.5.1" folder inside the "Retroarch/Shaders" directory.
4. Now is now ready to be seen by Retroarch.

🟠**Part 2: Loading Super-Bit-Shader** - Keyboard Instructions
1. Load a game inside Retroarch using a supported core above.
2. With the game loaded press the F1 key to bring up the "Quick Menu", from there scroll to "Shaders".
3. Select it and choose "Load Preset" to interact with the "Retroarch.SBS.3.5.1" folder.
4. Once inside the folder choose your console and shader type, if unsure select "Mixed-Frames".
5. Pick "GLSLP" file that is the shader color of your choice.

🔵**Part 3: Core Options**
1. Now with your shader selected use backspace key to head back to the "Main Menu".
2. From the there select "Quick Menu" again and locate "Core Options".
3. These are settings per core, and some of them need to be adjusted for SBS to work.

* DoubleCherryGB & SameBoy: Set GBC Color Correction to "OFF".
* PokeMini & Beetle VB: Set the Palette :Black & White".
* Beetle Cygne: Color Palette = Grayscale, Color Depth-Thousands (16-bit). Turn off 60hz Mode when using Mixed-Frames.

🟡**Part 5: SAVE YOUR WORK**
1. Head back to the "Main Menu" using and select the "Quick Menu" one last time.
3. Scroll down to "Overrides" and select it.
4. Choose Save "Core Override" or "Game Override" to have Super-Bit-Shader launch every session.
5. Use "1. Game Boy Color", "1. Neo Geo Pocket Color" and "1. Wonderswan Color (Crystal)" as "Core Overrides". 
6. Congratulations, you are all set! Press F1 to close the Retroarch menu and get back to the game.

-----------------------------------------------------------------------------------------------------------------------
PCVR - Virtual Boy (A Controller & Bigscreen Beta Required)
-----------------------------------------------------------------------------------------------------------------------
🔴**Setting Up Retroarch for VR**
1. With Super-Bit-Shader setup, create a desktop shortcut for Retroarch to make it easy to open in VR.
2. Start a Virtual Boy game and inside "Core Options" to set the "3D Mode" to "Side-by-Side".
3. Go back to the "Main Menu" and select "Settings" below it.
4. From "Settings" pick "Input" goto "Hotkeys", look for "Menu Toggle (Controller Combo)" and select "L3 + R3".
6. Return to the "Quick Menu" and save these changes as a "Core Override" and close Retroarch.

🔴**Using Retroarch in VR**
1. With your regular controller in reach, enter VR by launching an app called Bigscreen Beta. It can be the [Steam](https://store.steampowered.com/app/457550/Bigscreen_Beta/), [Rift Store](https://www.meta.com/experiences/pcvr/bigscreen-beta/1018613041536358/) or [Quest Store](https://www.meta.com/experiences/bigscreen-beta/2497738113633933/) version.
2. Wired connections automatically show your desktop, if you use wireless setup "[Remote Desktop](https://www.bigscreenvr.com/remotedesktop/?modestbranding=1&autoplay=1)" outside of this guide.
3. Using the VR controllers a pointer launch Retroarch and use your regular controller to navigate it.
4. Load a Virtual Boy game and put the regular controller down.
5. With VR controllers go into the Bigscreen's menu and press "My Room" to locate to the "Desktop" category.
6. You will find a "2D" button, press it until it says "SBS" for Side by Side 3D.
7. You are now ready to play Virtual Boy.

-----------------------------------------------------------------------------------------------------------------------
Google Cardboard - Virtual Boy (A controller & Bluetotooth Smarphone Required)
-----------------------------------------------------------------------------------------------------------------------
🔵**Setting Up Retroarch**
1. With Super-Bit-Shader setup, start a Virtual Boy game.
2. Pull up the "Quick Menu" and locate "On-Screen Overlay" to toggle the "Display Overlay" off.
3. Now enter "Settings" select "Input" and proceed to "Hotkeys". Look for "Menu Toggle (Controller Combo)" and select "L3 + R3".
4. Next return to the "Main Menu" and enter the "Quick Menu" again.
5. From there select "Core Options" and set the "3D Mode" to "Side-by-Side".
6. Save these changes as a "Core Override" and head back to the "Main Menu" to properly "Quit" Retroarch to save your work.
7. Now reboot the program and load your game and put the phone inside the Google Cardboard.

**NOTE**: "Core Options" cannot adjust Interpupillary Distance (IPD), make sure your Google Cardboard is fitted for Retroarch.

-----------------------------------------------------------------------------------------------------------------------
🐍Red-Viper
-----------------------------------------------------------------------------------------------------------------------
[Red-Viper](https://github.com/skyfloogle/red-viper) is a Virtual Boy Emulator for the 3DS by SkyFloogle.

The program has color palette support and to use it replace the included "rv_config.ini" on your 3DS's SD card with the file from the Github release page.
* Directory: "RootofSD\config\red-viper"

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
* **Special Thanks** to Nispero & EADMASTER for inspiring this project. Also thank you Floogle for helping me read the Red-Viper config files.

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
