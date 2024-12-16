# Super-Bit-Shader
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes.
Version: 2.0

**Supported Consoles**
Neo Geo Pocket (Beetle NeoPop)
Pokémon Mini (PokeMini)
Virtual Boy (Beetle VB)
Wonderswan (Beetle Cygne)

-----------------------------------------------------------------------------------------------------------------------
**Screenshots**
![Virtual Boy Screenshot!](https://i.imgur.com/fiUjUke.png)
![Pokemon Mini Screenshot!](https://i.imgur.com/qhzJsD8.png)

-----------------------------------------------------------------------------------------------------------------------
**Systems that require their Core Options to be adjusted**
-----------------------------------------------------------------------------------------------------------------------
Neo Geo Pocket: Default Settings are fine.
Pokemon Mini: Palette - Black & White
Virtual Boy: Palette - Black & White
Wonderswan: Color Palette - Grayscale, Color Depth - Thousands (16-bit)

-----------------------------------------------------------------------------------------------------------------------
**Credits**
-----------------------------------------------------------------------------------------------------------------------
Base Code by hunterk
Color Selection by Digiflower5 (AshleyPikachu).

Version 1.0: Testing and calibrating by Digiflower5 (AshleyPikachu) & hunterk.
Version 2.0: Testing, calibrating, and comments by Digiflower5 (AshleyPikachu)

Special Thanks to Nispero & EADMASTER for inspiring this project.

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
12. To keep your shader on the next reboot select "Save Preset" to save this shader to your game or core, and if you need the shader removed, select "Remove Preset".
13. Lastly press F1 again to get back to your game.

-----------------------------------------------------------------------------------------------------------------------
**How to Create Your Own Palette**
-----------------------------------------------------------------------------------------------------------------------
Prerequisites
1. A Photo editor with Hex Colors, and options to modify Hue, Chroma and Saturation.
2. This tool to [Convert Hex Color to GLSL vec3](https://airtightinteractive.com/util/hex-to-glsl/)
3. The ability to copy, edit and save the glsl files included in this github.

Guide
1. First create a color palette in a program of your choosing. This github includes sample sheets for each palette.
2. When making a Palette keep the light levels around the same as the grayscale templates. Also, use Gentle Gray as the template for Pokemon Mini.
3. Feel free to experiment with Chroma, Saturation, and Hue. If you are not sure how far to push it take a look at the sample levels in a photo editor.
4. If your looking for more detail about each console check inside each glsl file for comments.
