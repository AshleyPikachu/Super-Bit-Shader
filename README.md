<div align="center"> <img width="376" height="262" alt="image" src="https://github.com/user-attachments/assets/8a4fe7cf-3368-4d06-b4e8-689797107362" /> <div align="left">

# Super-Bit-Shader
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes, it also provides color correction and interframe blending as well, all coded by hand!

**Supported Colorized Consoles & Cores**
* Game Boy / Super Game Boy / Game Boy Color (All GB Monochrome, Grayscale or BW Palettes)
* Neo Geo Pocket / Neo Geo Pocket Color: (Beetle NeoPop / RACE)
* Pokémon Mini (PokeMini)
* Wonderswan / Wonderswan Color (Beetle Cygne)
* Virtual Boy (Beetle VB) / (Red-Viper 3DS)

**Supported Color Correction Consoles**
* Game Boy Color
* Super Game Boy
* Neo Geo Pocket Color
* Wonderswan Crystal

------------------------------------------------------------------------------------------------------------------
**Colorization Screenshots**
------------------------------------------------------------------------------------------------------------------
| Game Boy                            | Neo Geo Pocket                      | Pokemon Mini                      |
| ----------------------------------- | ----------------------------------- |-----------------------------------|
|<img width="323" height="290" alt="Fydo&#39;s Magic Tiles (4 0)" src="https://github.com/user-attachments/assets/e690748e-43df-41f3-876f-ccf61d8cf550" /> <br> [Fydo's Magic Tiles](https://ohnotomsutton.itch.io/fydos-magic-tiles)|<img width="322" height="305" alt="Neo Geo Pocket Goose" src="https://github.com/user-attachments/assets/2b5cbb5d-bd5f-43f3-b74d-f001a471371d" /><br> My Own Artwork |<img width="194" height="130" alt="Pokemon Mini (4 0)" src="https://github.com/user-attachments/assets/b2e59eaa-d1c0-4029-a939-2ea27da7f187" /><br>  My Own Artwork |

| Wonderswan                          | Virtual Boy                         |
| ----------------------------------- | ----------------------------------- |
|<img width="450" height="289" alt="Dog and Flower (4 0) WS" src="https://github.com/user-attachments/assets/d896c33f-dd4f-457d-bf61-31cb7118c571" /> <br> My Own Artwork| <img width="772" height="451" alt="Virtual Boy (4 0)" src="https://github.com/user-attachments/assets/ec826e04-f316-4630-8008-82d8b31b337d" /> <br>[VUENgine Platformer Demo](https://www.virtual-boy.com/homebrew/vuengine-platformer-demo/), [Fishbone](https://www.virtual-boy.com/homebrew/fishbone/) and [Elevated Speed](https://www.virtual-boy.com/homebrew/elevated-speed/)|

------------------------------------------------------------------------------------------------------------------
**Retroarch Shader Install Instructions**
------------------------------------------------------------------------------------------------------------------
🟢**Part 1: Retroarch Setup**
1. First download and install [Retroarch](https://www.retroarch.com/) and [familiarize yourself](https://www.youtube.com/watch?v=5F-Fo2f_4d0) with the program and [Shaders](https://www.youtube.com/watch?v=YyZ6IrmsNgY).
2. Launch Retroarch and go to "Settings" -> "Video" -> "Output" -> "Video - Set Video Driver to GL".
3. Download the release version of SBS, and place the "SuperBitShader-ra" folder inside the "Retroarch/Shaders" directory.
4. Super-Bit-Shader's GLSLP files are now ready to be seen by Retroarch.

🟠**Part 2: Loading Super-Bit-Shader**
1. Load a game inside Retroarch using a supported core above.
2. With the game loaded bring up the Retroarch "Quick Menu", from there scroll to "Shaders".
3. Select "Load Preset" to interact with the "SuperBitShader-ra" folder.
4. Once inside the folder choose your console and shader type.

🔵**Part 3: Core Options**
1. Now with your shader selected use the backspace key to head back to the "Main Menu".
2. From there select "Quick Menu" again and locate "[Core Options](https://www.reddit.com/r/RetroArch/comments/1uii13v/retroarch_psa_when_to_use_core_options_vs_shaders/)".
3. These are settings per core, and some of them need to be adjusted for SBS to work.

* PokeMini: Set the Palette: "Black & White".
* Beetle VB: Set the Palette: "Black & White".
* Beetle Cygne: Color Palette: "Grayscale", "Color Depth-Thousands (16-bit)". "60hz Mode off".
* Game Boy: See section below;

------------------------------------------------------------------------------------------------------------------
🔷 TGB Dual / Double Cherry GB
- Works out of the box, use "Game Boy Color.glslp" shader for GBC.
- Not all games work with these cores though, such as Fydo's Magic Tiles.

🔶 SameBoy
- Under "Video" in Core Options turn off GBC Color Correction.
- Under "System" When using the default "DMG/ CGB" mode use "Game Boy Color.glslp" for GBC.
- Under "System" When using "Super Game Boy 2" mode across the board use "Super Game Boy.glslp".

🔷 Gambatte
- Turn off Interframe Blending, and change Color Correction to "Accurate" & "GBC Color Only".
- Since the core handles color correction, use "Super Game Boy.glslp" for GBC interframe blending.
- Use SBS palettes / Gambattes core palettes for BW games. Use "Super Game Boy.glsp" for Gambatte ones.

------------------------------------------------------------------------------------------------------------------

🟡**Part 5: SAVE YOUR WORK**
1. Head back to the "Main Menu" and select the "Quick Menu" one last time.
3. Inside core options and shader presets you can save overrides to have things remain at bootup.
4. Shaders: Choose Save "Core Preset" or "Game Preset", for Super-Bit-Shader to launch every session.
5. Core Options: Choose Save "Core Options" or "Game Options" for Core Options to launch every session.
6. Congratulations, you are all set! Close Retroarch properly to make sure everything saved.

------------------------------------------------------------------------------------------------------------------
🐍[Red-Viper](https://github.com/skyfloogle/red-viper) (3DS Required)
------------------------------------------------------------------------------------------------------------------
🟢**Setting Up Red-Viper**
1. This is a Virtual Boy Emulator for the 3DS by SkyFloogle.
2. Replace the included "rv_config.ini" on your 3DS's SD card with the file from the Github release page.
* Directory: "RootofSD\config\red-viper"
3. You are now all set to use Red-Viper and can choose your palettes in the emulator.

------------------------------------------------------------------------------------------------------------------
**How to Create Your Own Palette**
------------------------------------------------------------------------------------------------------------------
Prerequisites
1. You will need a [photo editor](https://www.gimp.org/) with Hex Colors and the option to modify Hue, Chroma and Saturation.
2. This tool to [Convert Hex Color to GLSL vec3](https://airtightinteractive.com/util/hex-to-glsl/)
3. The ability to copy, edit and save the glsl files included in this github with a text editor.
4. This github's download includes samples and instructions for each console, read there for further info.

------------------------------------------------------------------------------------------------------------------
**Credits**
------------------------------------------------------------------------------------------------------------------
* **Version 1.0**: Testing and calibrating, color selection by Digiflower5 (AshleyPikachu). Base code by hunterk.
* **Version 2.0+**: Testing, calibrating, color selection, code modifications, and comments by Digiflower5 (AshleyPikachu)
* **Logo Design**: Digiflower5 (AshleyPikachu)
* **Special Thanks** to Nispero & EADMASTER for inspiring this project. Also thank you SkyFloogle for helping me read the Red-Viper config.
------------------------------------------------------------------------------------------------------------------
**Licenses** - Check the GLSL files for full details
------------------------------------------------------------------------------------------------------------------
All separate supporting shaders included with SBS are from RA's Online Updater unmodified and have their own separate licenses in their files, this list is for version 4.0.

* "Super-Bit-Shader" by Digiflower5 (AshleyPikachu) and hunterk is Public Domain.
* "gba-color" by Pokefan531 and hunterk is Public Domain.
* "gbc-color" by Pokefan531 and hunterk is Public Domain.
* "vba-color" by PokeFan531, Mangler & hunterk is Public Domain.
* "bicubic" by Team XBMC is GNU General Public License.
* "mixed-frames" shader by jdgleaver is GNU General Public License.
------------------------------------------------------------------------------------------------------------------
**Extra Notes & Tips**
------------------------------------------------------------------------------------------------------------------
**General Notes**
* Older releases of Super-Bit-Shader are included on this Github for archival purposes.
* You can use Retroarch "[Overrides](https://www.youtube.com/watch?v=FFd_L_apJ1I)" to set your video driver per core if you need another display driver.
* General Public License Terms can be found here: https://www.gnu.org/
* SameBoy's System modes cannot be saved per game, so pairing it with Gamebatte is great.
* "Super Game Boy.glslp" is just the mixed-frames interframe blending shader.
