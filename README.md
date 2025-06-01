# Super-Bit-Shader (Version: 3.0)
-----------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes.
All seperate supporting shaders included with SBS are from Retroarch's Online Updater unmodified.

**Supported Consoles**
* Game Boy (Gamebatte / DoubleCherryGB)
* Neo Geo Pocket (Beetle NeoPop / RACE)
* Virtual Boy (Beetle VB)
* Pokémon Mini (PokeMini)
* Wonderswan (Beetle Cygne)
* Wonderswan Color / SwanCrystal (Beetle Cygne)

-----------------------------------------------------------------------------------------------------------------------
**Credits & Licesnes**
-----------------------------------------------------------------------------------------------------------------------
**Credits**
* **Version 1.0**: Testing and calibrating, color selection by Digiflower5 (AshleyPikachu). Base code by hunterk.
* **Version 2.0-3.0**: Testing, calibrating, color selection, code modifications, and comments by Digiflower5 (AshleyPikachu) 

**Licenses** - Check the GLSL files for full details
* "Super-Bit-Shader" by Ashley the Pikachu (Digiflower5) and hunterk is Public Domain.
* "pixel-aa / to_lin" shaders by fishku are Public Domain.
* "mixed-frames" shader by jdgleaver is GNU General Public License.
* "gba-color" by Pokefan531 and hunterk is Public Domain.

* Special Thanks to Nispero & EADMASTER for inspiring this project.

-----------------------------------------------------------------------------------------------------------------------
**Multiple Shader Versions**
-----------------------------------------------------------------------------------------------------------------------
* **Regular**: SBS applied to the console of choice with no modifications to the output.
* **Mixed-Frames**: SBS + Mixed-Frames, use this for intentional ghosting / transparency. Highly recommended for Wonderswan.
* **SwanCrystal-Real**: GBA-Color instead of SBS, included with all WS presets for Wonderswan Color games. It's similar to a SwanCrystal.
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
**Retroarch Instructions**
-----------------------------------------------------------------------------------------------------------------------
1. First download and install [Retroarch](https://www.retroarch.com/) and familiarize yourself with [Shaders](https://www.youtube.com/watch?v=YyZ6IrmsNgY).
2. Download the contents of this Github and place the "Super-Bit-Shader 3.0" folder inside the "Retroarch/Shaders" directory.
3. Launch a game in Retroarch, and press F1 (PC) to bring up the Retroarch "Quick Menu".
4. From the "Quick Menu" scroll down to "Shaders" and select the category.
5. Choose "Load Preset" and locate the "Super-Bit-Shader 3.0" folder, inside will be all supported consoles presets.
6. Select a "glslp" file to load your preset, and follow this guide to [automatically load your shaders](https://www.youtube.com/watch?v=dZpBRR4DGG0) next time.
7. If the colors or look off be sure to adjust your "Core Options" found in the "Quick Menu". Required adjustments are below.
-----------------------------------------------------------------------------------------------------------------------
**Core Options**
-----------------------------------------------------------------------------------------------------------------------
* Gambatte: GB Colorization = Auto, Internal, or GBC. Internal Palette = GBC - Grayscale.
* DoubleCherryGB: Default.
* Beetle NeoPop / RACE: Default.
* PokeMini: Palette = Black & White.
* Beetle VB: Palette = Black & White.
* Beetle Cygne: Color Palette = Grayscale, Color Depth - Thousands (16-bit). Turn off "60hz Mode" when using Mixed-Frames / high FPS.

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
**Extra Notes**
-----------------------------------------------------------------------------------------------------------------------
Older releases of Super-Bit-Shader are included on this Github for archival purposes, newer builds have bug fixes / updated color palettes.
