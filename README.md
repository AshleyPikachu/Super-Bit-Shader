# Super-Bit-Shader
Super Bit Shader is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes.

**Supported Consoles**
Game Boy, Virtual Boy, Pokémon Mini, Neo Geo Pocket, and WonderSwan.

**NOTE**: You can use unsupported systems but colors may be misrepresented or who knows you might like it.

-----------------------------------------------------------------------------------------------------------------------
**How to Setup**
1. First install [Retroarch](https://www.retroarch.com/) and run the software, set the Video output to GL before using this Shader.
2. If you are using Virtual Boy be sure to set its core settings to output in Black & White.
3. Download the content of this Github and place the folder inside the Retroarch Shaders directory.

**Standard Windows Directory**: "C:\RetroArch-Win64\shaders"

4. Launch Retroarch and load the game you want to use the Shader with.
5. Press F1 to launch the Retroarch menu and locate the Quick Menu, from there locate Shaders tab and select it.
6. Turn on Shaders and scroll down to the bottom until you see Shader Passes, change the pass from 0 to 1.
7. With the pass loaded, press enter on "Shader #0" to load the Shaders directory, locate the shader and select it.
8. If everything has been done correctly, press "Apply Changes" to activate the shader.
9. Lastly select "Save Preset" to save this shader to your game or core.
10. If you need the shader removed, select "Remove Preset", also press F1 again to get back to your game.
-----------------------------------------------------------------------------------------------------------------------
**Screenshots**

![Virtual Boy Screenshot!](https://i.imgur.com/yWm4wEx.png)

-----------------------------------------------------------------------------------------------------------------------
**Credits**

Original Code by hunterk

Testing & Code Tweaking by Digiflower5 (AshleyPikachu) & hunterk.

Special Thanks to Nispero & EADMASTER for inspiring this project.

**License**

This code is Public Domain, feel free to use it any way you see fit.

-----------------------------------------------------------------------------------------------------------------------
**Other Guides**

[Retroarch Beginners Guide](https://www.youtube.com/watch?v=YyZ6IrmsNgY)

[Shaders / Shader Passes Beginners Guide](https://www.youtube.com/watch?v=YyZ6IrmsNgY) 

-----------------------------------------------------------------------------------------------------------------------
**Recommended Shaders Pairings** - Pass Order is important & parameters are default unless stated otherwise.

*Virtual Boy*: Super Bit Shader & Gdapt - Color Blending and Transparency

*Wonderswan*: Super Bit Shader & mixed_frames - Transpareny & Ghosting

 *Wonderswan Color*: nds-color & mixed_frames - Color Improvements & Transparency / Ghosting

Be sure to Turn off 60fps mode for Wonderswan / Wonderswan Color, even if your device is only 60fps.

GLSL Shaders Locations: "Dithering" and "Motionblur"
