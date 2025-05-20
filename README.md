# Super-Bit-Shader (Version: 3.0)
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes. 
* This code is Public Domain, feel free to use it any way you see fit.

**Supported Consoles**
* Game Boy (Gambatte / DoubleCherryGB)
* Neo Geo Pocket (Beetle NeoPop)
* Pokémon Mini (PokeMini)
* Virtual Boy (Beetle VB)
* Wonderswan (Beetle Cygne)
-----------------------------------------------------------------------------------------------------------------------
**Screenshots**
![Virtual Boy Screenshot!](https://repository-images.githubusercontent.com/759192405/6e1eaa6e-f2f6-417a-b952-391bf7cb2621)

-----------------------------------------------------------------------------------------------------------------------
**Required Core Settings**
-----------------------------------------------------------------------------------------------------------------------
Once a game is loaded, core settings can be found in the Quick Menu inside of Retroarch. Press F1 on PC to get there.
* Gambatte: GBC - Grayscale
* DoubleCherryGB: Default
* Neo Geo Pocket: Default
* Pokemon Mini: Palette - Black & White
* Virtual Boy: Palette - Black & White
* Wonderswan: Color Palette - Grayscale, Color Depth - Thousands (16-bit)

-----------------------------------------------------------------------------------------------------------------------
**Credits**
-----------------------------------------------------------------------------------------------------------------------
* **Version 1.0**: Testing and calibrating, color selection by Digiflower5 (AshleyPikachu). Base code by hunterk.
* **Version 2.0-3.0**: Testing, calibrating, color selection, code modifications, and comments by Digiflower5 (AshleyPikachu)
  
* Special Thanks to Nispero & EADMASTER for inspiring this project.

-----------------------------------------------------------------------------------------------------------------------
**Retroarch Instructions**
-----------------------------------------------------------------------------------------------------------------------
[Retroarch Beginners Guide](https://www.youtube.com/watch?v=YyZ6IrmsNgY)
[Shaders / Shader Passes Guide](https://www.youtube.com/watch?v=YyZ6IrmsNgY) 

1. First download and install [Retroarch](https://www.retroarch.com/).
2. Go into settings and make sure the video is outputting to GL before continuing.
3. Download the contents of this Github and look inside each folder for the .glsl files you want to use.
4. Place the glsl files inside the Retroarch Shaders directory.

**Standard Windows Directory**: "C:\RetroArch-Win64\shaders"

5. Launch Retroarch and load the game you want to use the Shader with.
6. Press F1 to bring up the Retroarch Quick Menu.
7. With the menu open scroll down to Shaders and select it.
8. Turn on shaders and scroll down until you see Shader Passes. 
9. Once found change the Shader Pass from 0 to 1.
10. Now press enter on "Shader #0" to load the Shaders directory and select the Super-Bit-Shader.
11. Once your shader is selected press "Apply Changes" to activate the shader.
12. To keep your shader on the next reboot select "Save Preset" to save this shader to your game or core.
13. To remove the shader preset, select "Remove Preset", and press F1 to get back to your game.

-----------------------------------------------------------------------------------------------------------------------
**Mixed Frames Versions**
-----------------------------------------------------------------------------------------------------------------------
"Mixed-Frames" is a shader included Retroarch when downloading shaders from the Online Updater. It's used for transparency on some consoles.
Be sure to append the shader after loading Super-Bit-Shader first.

**Console Breakdown**
* Game Boy: Almost never used. Example: "[Chikyuu Kaihou Gun Zas"](https://www.youtube.com/watch?v=2GtKMmhcN1I).
* Neo Geo Pocket: Unknown, support added if needed.
* Wonderswan / Wonderswan Color: Recommended for proper [transparency](https://youtu.be/VYXeU9rx_3M?feature=shared&t=3) instead of [flicker](https://youtu.be/l8vZFgilmD4?feature=shared&t=55). Turn off 60fps in Core Settings, for WSC swap out Super-Bit-Shader for "nds-color".

**Shader Locations**
   * Nds-Color can be found in Handheld/Color Folder
   * Mixed-Frames can be found in the Motion Blur Folder

-----------------------------------------------------------------------------------------------------------------------
**How to Create Your Own Palette**
-----------------------------------------------------------------------------------------------------------------------
Prerequisites
1. A Photo editor with Hex Colors and the option to modify Hue, Chroma and Saturation.
2. This tool to [Convert Hex Color to GLSL vec3](https://airtightinteractive.com/util/hex-to-glsl/)
3. The ability to copy, edit and save the glsl files included in this github.

Guide
1. First create a color palette in a program of your choosing. This github includes sample sheets for each palette.
2. When making a Palette keep the light levels around the same as the grayscale templates.
3. Feel free to experiment with Chroma, Saturation, and Hue.
4. More details are avaliable in each consoles glsl files.
