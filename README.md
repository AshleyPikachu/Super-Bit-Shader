# Super-Bit-Shader
------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes, it also provides color correction and interframe blending as well all coded by hand!

**Supported Colorized Consoles & Cores**
* Game Boy / Super Game Boy / Game Boy Color (All GB with Monochrom, Grayscale or BW palettes)
* Neo Geo Pocket / Neo Geo Pocket Color: (Beetle NeoPop / RACE)
* Pokémon Mini (PokeMini)
* Wonderswan / Wonderswan Color (Beetle Cygne)
* Virtual Boy (Beetle VB) / (Red-Viper 3DS)

**Supported Color Correction Consoles & Cores**
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
1. First download and install [Retroarch](https://www.retroarch.com/) and familiarize yourself with the [program](https://www.youtube.com/watch?v=5F-Fo2f_4d0) and [Shaders](https://www.youtube.com/watch?v=YyZ6IrmsNgY).
2. Launch Retroarch and go to "Settings" -> "Video" -> "Output" -> "Video - Set Video Driver to GL".
3. Download a release version and place the "SuperBitShader-ra" folder inside the "Retroarch/Shaders" directory.
4. Now is now ready to be seen by Retroarch.

🟠**Part 2: Loading Super-Bit-Shader**
1. Load a game inside Retroarch using a supported core above.
2. With the game loaded bring up the Retroarch "Quick Menu", from there scroll to "Shaders".
3. Select it and choose "Load Preset" to interact with the "SuperBitShader-ra" folder.
4. Once inside the folder choose your console and shader type, if unsure select "Mixed-Frames".
5. Pick "GLSLP" file that is the shader color of your choice.

🔵**Part 3: Core Options**
1. Now with your shader selected use backspace key to head back to the "Main Menu".
2. From the there select "Quick Menu" again and locate "Core Options".
3. These are settings per core, and some of them need to be adjusted for SBS to work.

* PokeMini: Set the Palette: "Black & White".
* Beetle VB: Set the Palette: "Black & White".
* Beetle Cygne: Color Palette: "Grayscale", "Color Depth-Thousands (16-bit)". "60hz Mode off" when Mixed-Frames.
* Game Boy: See section below;

------------------------------------------------------------------------------------------------------------------
🔷 TGB Dual / Double Cherry GB
- Simply load the shader and it will work.
- Not all games work with these cores though, such as Fydo's Magic Tiles.

🔶 Same Boy - Game Boy / Game Boy Color
- Using "Auto Detect DMG/ CGB" System mode requires SBS for Color / Interframe Blending for OG GB.
- Under "Video" in Core Options turn off GBC Color Correction and set "Game Boy Color.glslp" shader.

🔷 Gambatte
- Turn off interframe blending when using a colorized preset.
- Turn off Color Correction when using a colorized shader preset, have "GBC Color Only" ON.
- Do not use "Game Boy Color.glslp" as the core can handle it.
- Gambatte has more colors in Core Options, Per game decide if you want to Core Option Color Correct.

🔶 Same Boy - Super Game Boy
- Best used for [SGB](https://www.youtube.com/watch?v=JU5OBrDlOR8) mode when paired with Gambatte as System settings can't be saved per game.
- Set the "System" to "Super Game Boy 2" across the board.
- Use the "Super Game Boy.glslp" as a core preset for proper transprency.
- This mode will not play Game Boy Color Games, but puts some titles in a enhanced mode.

------------------------------------------------------------------------------------------------------------------

🟡**Part 5: SAVE YOUR WORK**
1. Head back to the "Main Menu" using and select the "Quick Menu" one last time.
3. Inside each category for core options and shader presets you can save an override.
4. Choose Save "Core Preset" or "Game Preset" for Shaders to have Super-Bit-Shader launch every session.
5. Choose Save "Core Options" or "Game Options" for Core Options to launch every session.
6. Congratulations, you are all set! Close the Retroarch properly to make sure everything stuck.

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
1. You will need a Photo editor with Hex Colors and the option to modify Hue, Chroma and Saturation.
2. This tool to [Convert Hex Color to GLSL vec3](https://airtightinteractive.com/util/hex-to-glsl/)
3. The ability to copy, edit and save the glsl files included in this github with a text editor.
4. This github's download includes samples and instructions for each console, read there for further instructions.

------------------------------------------------------------------------------------------------------------------
**Credits**
------------------------------------------------------------------------------------------------------------------
* **Version 1.0**: Testing and calibrating, color selection by Digiflower5 (AshleyPikachu). Base code by hunterk.
* **Version 2.0+**: Testing, calibrating, color selection, code modifications, and comments by Digiflower5 (AshleyPikachu)
* **Special Thanks** to Nispero & EADMASTER for inspiring this project. Also thank you SkyFloogle for helping me read the Red-Viper config.

------------------------------------------------------------------------------------------------------------------
**Licenses** - Check the GLSL files for full details
------------------------------------------------------------------------------------------------------------------
All separate supporting shaders included with SBS are from RA's Online Updater unmodified and have their own separate licenses in their files, this list is for version 4.0.

* "Super-Bit-Shader" by Ashley the Pikachu (Digiflower5) and hunterk is Public Domain.
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
* You can use Retroarch "Overrides" to set your video driver per core if you need another display driver.
* General Public License Terms can be found here: https://www.gnu.org/


