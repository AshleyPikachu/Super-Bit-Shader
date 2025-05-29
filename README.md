# Super-Bit-Shader (Version: 3.0)
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes.
* Super-Bit-Shader itself is Public Domain, feel free to use it any way you see fit.
* The included "mixed-frames.glsl" file works with Super-Bit-Shader, but is not part of it. That shader is part of Retroarch's "Online Updater" and has NOT been modified. That file has its own seperate "GNU General Public License", check the "mixed-frames.glsl" file for details.

**Supported Consoles**
* Game Boy (Gambatte / DoubleCherryGB)
* Neo Geo Pocket (Beetle NeoPop)
* Pokémon Mini (PokeMini)
* Virtual Boy (Beetle VB)
* Wonderswan (Beetle Cygne)

-----------------------------------------------------------------------------------------------------------------------
**Credits**
-----------------------------------------------------------------------------------------------------------------------
* **Version 1.0**: Testing and calibrating, color selection by Digiflower5 (AshleyPikachu). Base code by hunterk.
* **Version 2.0-3.0**: Testing, calibrating, color selection, code modifications, and comments by Digiflower5 (AshleyPikachu)
  
* Special Thanks to Nispero & EADMASTER for inspiring this project.

-----------------------------------------------------------------------------------------------------------------------
**Screenshots**
* Game Boy - [Fydo's Magic Tiles](https://ohnotomsutton.itch.io/fydos-magic-tiles)
![image](https://github.com/user-attachments/assets/f3039f66-881b-48ed-99dd-a95e46263b2c)

* Virtual Boy - [VUENgine Platformer Demo](https://www.virtual-boy.com/homebrew/vuengine-platformer-demo/), [Fishbone](https://www.virtual-boy.com/homebrew/fishbone/), [Elevated Speed](https://www.virtual-boy.com/homebrew/elevated-speed/), and [Multi Color Demo](https://www.virtual-boy.com/homebrew/multi-color-demo/)
![image](https://github.com/user-attachments/assets/2d75ece2-f45d-4ead-84f8-a9dc9b19029f)

* Neo Geo Pocket - My Own Artwork
![image](https://github.com/user-attachments/assets/7d9ad104-ebef-4f9b-bd53-485e7a2cd4ef)

* Pokemon Mini - [Cortex](https://www.pokemon-mini.net/games/cortex/)
![image](https://github.com/user-attachments/assets/96e81e88-d637-409c-9715-932dfad425aa)

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
Some of thse cores need their "Core Options" adjusted for the shader to display properly, it is also be found in the "Quick Menu".

* Gambatte: GB Colorization = Auto, Internal, or GBC. Internal Palette = GBC - Grayscale.
* DoubleCherryGB: Default.
* Neo Geo Pocket: Default.
* Pokemon Mini: Palette = Black & White.
* Virtual Boy Palette = Black & White.
* Wonderswan: Color Palette = Grayscale, Color Depth - Thousands (16-bit).

-----------------------------------------------------------------------------------------------------------------------
**Mixed Frames**
-----------------------------------------------------------------------------------------------------------------------
"Mixed-Frames" is used for transparency and intentional ghosting on some consoles. Below are use cases.

* Game Boy: Rarely used to create more effects. Games such as "[Chikyuu Kaihou Gun Zas"](https://www.youtube.com/watch?v=2GtKMmhcN1I) use it.
* Neo Geo Pocket: Unknown, the console is very obscure so support was added to play it safe.
* Wonderswan: It's for transparency, also turn off "60hz Mode" in "Core Options".
* Wonderswan Color: Same WS, but use "nds-color" instead of SBS. "nds-color" is located inside Retroarch's Handheld/Color Folder.

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

-----------------------------------------------------------------------------------------------------------------------
**Extra Notes**
-----------------------------------------------------------------------------------------------------------------------
Older releases of Super-Bit-Shader are included on this Github for archival purposes, newer builds have bug fixes / updated color palettes.
