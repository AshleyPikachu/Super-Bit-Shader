# Super-Bit-Shader (Version: 3.5)
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes all the press of a hotkey button.
  
**Supported Consoles**
* Game Boy / Game Boy Color (DoubleCherryGB / TGB Dual)
* Neo Geo Pocket / Neo Geo Pocket Color: (Beetle NeoPop / RACE)
* Pokémon Mini (PokeMini)
* Wonderswan / Wonderswan Color (Beetle Cygne)
* Virtual Boy (Beetle VB)

-----------------------------------------------------------------------------------------------------------------------
**Shader Versions**
-----------------------------------------------------------------------------------------------------------------------
* **Regular**: SBS applied to the console of choice with no modifications to the output.
* **Mixed-Frames**: SBS + Mixed-Frames, use this for intentional ghosting / transparency. Highly recommended for Wonderswan.
* **Pixel-AA**: Anti-Aliasising options included with all consoles for non integer scale displays.

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
**Part 1: Placing your Files**
1. First download and install [Retroarch](https://www.retroarch.com/) and familiarize yourself with [Shaders](https://www.youtube.com/watch?v=YyZ6IrmsNgY).
2. Download the contents of this Github and place the "Super-Bit-Shader 3.5" folder inside the "Retroarch/Shaders" folder.
3. With SBS 3.5 now inside that folder the shader is now ready to be seen by Retroarch.

**Part 2: Preparing Retroarch**
1. Launch Retroarch and go to the following menus "Settings" -> "Video" -> "Output" -> "Video - Set Video Driver to GL" to use SBS.

**Part 3: Loading Super-Bit-Shader**
1. Load a game inside Retroarch using a supported core above.
2. With the game loaded press F1 (PC) to bring up the "Quick Menu", from there scroll to "Shaders".
3. Select it and choose "Load Preset" to view and enter the "Super-Bit-Shader 3.5" folder.
4. Once inside choose your console and shader type, if unsure select "Regular".
5. IMPORTANT: Pick the "1.namehere.glslp" file to load Super-Bit-Shader. Do not skip this part.
6. It will look like nothing has changed, but you are ready for the next part.

**Part 4: Hotkeys to Change Colors**
1. Leave the shaders menu using backspace (PC) until your all the way back to the "Main Menu".
2. Go to "Settings" -> "Input" -> "Hotkeys" -> to Locate "Next Shader" and "Previous Shader".
3. Set the "Next Shader" hotkey to ZR (R-Trigger) and "Previous Shader" hotkey to ZL (L-Trigger) on a controller.
4. You are now able to change the shader color at will, and Retroarch will remember these hotkeys.

**Part 5: Core Options**
1. Now with your hotkeys set use backspace (PC) again to head back to the "Main Menu".
2. From the "Main Menu" select "Quick Menu" again and locate "Core Options".
3. "Core Options" are settings per core, and some of them need to be adjusted for SBS to work.
4. If you are using TGB Dual, NeoGeo Pop, or RACE you can skip to part 6 as they work out of the box.

**Part 5: Core Options to Modify**
* DoubleCherryGB: GBC Color Correction "OFF", the shader will handle the GBC color correction.
* PokeMini: Palette = Black & White.
* Beetle VB: Palette = Black & White.
* Beetle Cygne: Color Palette = Grayscale, Color Depth - Thousands (16-bit). Turn off "60hz Mode" when using Mixed-Frames / high FPS.

**Part 6: SAVE YOUR WORK**
1. While Retroarch recalls hotkeys automaticly it does not do the same for shaders.
2. Head back to the "Main Menu" using backspace (PC) and select the "Quick Menu" one last time.
3. Scroll down to "Overrides" and select it.
4. Choose "Save Core Overrides" to have Super-Bit-Shader launch every session. This will need to be done per core.
5. Congratulations, you are all set to use Super-Bit-Shader! Press F1 (PC) to close the Retroarch menu and get back to the game.

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
* All seperate supporting shaders included with SBS are from Retroarch's Online Updater unmodified and have their own licenses.

-----------------------------------------------------------------------------------------------------------------------
**Extra Notes**
-----------------------------------------------------------------------------------------------------------------------
* Older releases of Super-Bit-Shader are included on this Github for archival purposes.
