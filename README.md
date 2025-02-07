# Super-Bit-Shader
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes.
Version: 2.0

**Supported Consoles**
* Neo Geo Pocket (Beetle NeoPop)
* Pokémon Mini (PokeMini)
* Virtual Boy (Beetle VB)
* Wonderswan (Beetle Cygne)

-----------------------------------------------------------------------------------------------------------------------
**Screenshots**
![Virtual Boy Screenshot!](https://repository-images.githubusercontent.com/759192405/6e1eaa6e-f2f6-417a-b952-391bf7cb2621)
-----------------------------------------------------------------------------------------------------------------------
**Systems that require their Core Options to be adjusted**
-----------------------------------------------------------------------------------------------------------------------
* Neo Geo Pocket: Default Settings are fine.
* Pokemon Mini: Palette - Black & White
* Virtual Boy: Palette - Black & White
* Wonderswan: Color Palette - Grayscale, Color Depth - Thousands (16-bit)

-----------------------------------------------------------------------------------------------------------------------
**Credits**
-----------------------------------------------------------------------------------------------------------------------
* Original Base Code by hunterk
* Color Selection by Digiflower5 (AshleyPikachu).

* **Version 1.0**: Testing and calibrating by Digiflower5 (AshleyPikachu) & hunterk.
* **Version 2.0**: Testing, calibrating, and comments by Digiflower5 (AshleyPikachu)

* Special Thanks to Nispero & EADMASTER for inspiring this project.

**License**
This code is Public Domain, feel free to use it any way you see fit.

-----------------------------------------------------------------------------------------------------------------------
**Retroarch PC Guides and Instructions**
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
**How to Create Your Own Palette**
-----------------------------------------------------------------------------------------------------------------------
Prerequisites
1. A Photo editor with Hex Colors and the option to modify Hue, Chroma and Saturation.
2. This tool to [Convert Hex Color to GLSL vec3](https://airtightinteractive.com/util/hex-to-glsl/)
3. The ability to copy, edit and save the glsl files included in this github.

Guide
1. First create a color palette in a program of your choosing. This github includes sample sheets for each palette.
2. When making a Palette keep the light levels around the same as the gray templates.
3. Feel free to experiment with Chroma, Saturation, and Hue.
4. More details are avaliable in each consoles glsl files.

-----------------------------------------------------------------------------------------------------------------------
**Mixed Frames Shader Notice**
-----------------------------------------------------------------------------------------------------------------------
Why use Mixed-Frames + Install Steps
1. Mixed-Frames is a default shader inside of Retroarch that allows the Wonderswan / Wonderswan Color to have proper transparency.
2. There is a Mixed-Frames version of Super-Bit-Shader included in the Wonderswan folder, use them to prevent a dull color palette.
3. If you do not use the correct version of the shader, mixed-frames dulls the color palette as its pulling from the previous grayscale frame.
4. Be sure to turn off the 60fps mode in Core Options for a smoother effect.
5. Also, make sure to append Mixed-Frames after Super-Bit-Shader as the order of shaders is important.
6. In the case of the Wonderswan Color, I recommend pairing it with Nds-Color with Mixed-Frames instead for a close to hardware look.

**Shader Locations**
   * Nds-Color can be found in Handheld/Color Folder
   * Mixed-Frames can be found in the Motion Blur Folder
