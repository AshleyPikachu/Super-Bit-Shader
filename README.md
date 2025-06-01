# Super-Bit-Shader (Version: 3.0)
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes.

**Licenses** - Check the GLSL files for full details
* "Super-Bit-Shader" itself is Public Domain, feel free to use it any way you see fit.
* "pixel-aa / to_lin" shaders by fishku works with SBS but are not a part of it. It's unmodifed from Retroarch's online updater and is Public Domain.
* "mixed-frames" shader by jdgleaver works with SBS but is not part of it. It's unmodifed from Retroarch's online updater and is GNU General Public License.


**Supported Consoles**
* Game Boy (Gambatte / DoubleCherryGB) - [Fydo's Magic Tiles](https://ohnotomsutton.itch.io/fydos-magic-tiles)
![image](https://github.com/user-attachments/assets/6b493a3d-9139-429d-90b4-e9d0534f161b)

* Neo Geo Pocket (Beetle NeoPop) - My Own Artwork
![image](https://github.com/user-attachments/assets/0590a254-e07d-41df-847b-d4563b9d5576)

* Virtual Boy (Beetle VB) - [VUENgine Platformer Demo](https://www.virtual-boy.com/homebrew/vuengine-platformer-demo/), [Fishbone](https://www.virtual-boy.com/homebrew/fishbone/), [Elevated Speed](https://www.virtual-boy.com/homebrew/elevated-speed/), and [Multi Color Demo](https://www.virtual-boy.com/homebrew/multi-color-demo/)
![image](https://github.com/user-attachments/assets/2d75ece2-f45d-4ead-84f8-a9dc9b19029f)

* Wonderswan (Beetle Cygne) - My Own Artwork
![image](https://github.com/user-attachments/assets/b13dfe01-a28c-4048-be48-199d694cc297)

* Pokémon Mini (PokeMini) - [Cortex](https://www.pokemon-mini.net/games/cortex/)
![image](https://github.com/user-attachments/assets/5b6ab960-aef4-4088-a4ec-6aca12031e4a)

-----------------------------------------------------------------------------------------------------------------------
**Credits**
-----------------------------------------------------------------------------------------------------------------------
* **Version 1.0**: Testing and calibrating, color selection by Digiflower5 (AshleyPikachu). Base code by hunterk.
* **Version 2.0-3.0**: Testing, calibrating, color selection, code modifications, and comments by Digiflower5 (AshleyPikachu) 
* Special Thanks to Nispero & EADMASTER for inspiring this project.

-----------------------------------------------------------------------------------------------------------------------
**Retroarch Instructions**
-----------------------------------------------------------------------------------------------------------------------
1. First download and install [Retroarch](https://www.retroarch.com/).
2. Familairize yourself with [Shaders](https://www.youtube.com/watch?v=YyZ6IrmsNgY).
3. Download the contents of this Github and place the "Super-Bit-Shader 3.0" folder inside the "Retroarch/Shaders" directory.
4. Launch a game in Retroarch, and press F1 (PC) to bring up the Retroarch "Quick Menu".
5. From the "Quick Menu" scroll down to "Shaders" and select the category.
6. Now choose "Load Preset" and locate the "Super-Bit-Shader 3.0" folder, enter it to see the supported consoles.
7. Using the Virtual Boy folder as an example select "SBS - Virtual Boy Sunset.glslp" to load the shader.
8. With the shader all set here is a video guide to [automaticly load your shaders](https://www.youtube.com/watch?v=dZpBRR4DGG0) for the next time you play.

-----------------------------------------------------------------------------------------------------------------------
**Adjusting Core Options**
-----------------------------------------------------------------------------------------------------------------------
Some of thse cores need their "Core Options" adjusted for the shader to display properly. "Core Options" can be located inside the "Quick Menu".

* Gambatte: GB Colorization = Auto, Internal, or GBC. Internal Palette = GBC - Grayscale.
* DoubleCherryGB: Default.
* Neo Geo Pocket: Default.
* Pokemon Mini: Palette = Black & White.
* Virtual Boy Palette = Black & White.
* Wonderswan: Color Palette = Grayscale, Color Depth - Thousands (16-bit). Turn off "60hz Mode" when using Mixed-Frames version.

-----------------------------------------------------------------------------------------------------------------------
**Multiple Shader Versions**
-----------------------------------------------------------------------------------------------------------------------
* The "Pixel AA" Shader is getting even pixels when interger upscaling is not possible. Think of something like a retro handheld which may not have the right shape.
* The "Mixed-Frames" shader is for transparency and intentional ghosting on some consoles / games. It is highly recommended for Wonderswan to prevent flicker.
* For Wonderswan Color check out the "Realistic Wonderswan" Shader.
-----------------------------------------------------------------------------------------------------------------------
**How to Create Your Own Palette**
-----------------------------------------------------------------------------------------------------------------------
Prerequisites
1. A Photo editor with Hex Colors and the option to modify Hue, Chroma and Saturation.
2. This tool to [Convert Hex Color to GLSL vec3](https://airtightinteractive.com/util/hex-to-glsl/)
3. The ability to copy, edit and save the glsl files included in this github.

Guide
1. First create a color palette in a program of your choosing. This github includes sample sheets for each palette.
2. When making a Palette keep the light levels around the same as the grayscale templates with the expection being Virtual Boy.
3. Feel free to experiment with Chroma, Saturation, and Hue.
4. More details are avaliable in each consoles glsl files.

-----------------------------------------------------------------------------------------------------------------------
**Extra Notes**
-----------------------------------------------------------------------------------------------------------------------
Older releases of Super-Bit-Shader are included on this Github for archival purposes, newer builds have bug fixes / updated color palettes.
