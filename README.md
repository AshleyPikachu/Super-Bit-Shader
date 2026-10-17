# Super-Bit-Shader
------------------------------------------------------------------------------------------------------------------
Super-Bit-Shader (SBS) is a GLSL Retroarch Pixel Index shader that allows the user to color monochromatic games using a variety of palettes, it also provides color correction and interframe blending as well all coded by hand!

**Supported Consoles**
* Game Boy / Game Boy Color (TGB Dual / DoubleCherryGB)
* Neo Geo Pocket / Neo Geo Pocket Color: (Beetle NeoPop / RACE)
* Pokémon Mini (PokeMini)
* Wonderswan / Wonderswan Color (Beetle Cygne)
* Virtual Boy (Beetle VB) / (Red-Viper)

**Paritally Supported Cores**
* Game Boy / Game Boy Color (SameBoy) - Game Boy Color and Super Game Boy Games

------------------------------------------------------------------------------------------------------------------
**Colorization Screenshots**
------------------------------------------------------------------------------------------------------------------
| Game Boy                            | Neo Geo Pocket                      | Pokemon Mini                      |
| ----------------------------------- | ----------------------------------- |-----------------------------------|
|<img width="323" height="290" alt="Fydo&#39;s Magic Tiles (4 0)" src="https://github.com/user-attachments/assets/e690748e-43df-41f3-876f-ccf61d8cf550" /> <br> [Fydo's Magic Tiles](https://ohnotomsutton.itch.io/fydos-magic-tiles)|<img width="322" height="305" alt="Neo Geo Pocket Goose" src="https://github.com/user-attachments/assets/2b5cbb5d-bd5f-43f3-b74d-f001a471371d" /><br> My Own Artwork |<img width="194" height="130" alt="Pokemon Mini (4 0)" src="https://github.com/user-attachments/assets/b2e59eaa-d1c0-4029-a939-2ea27da7f187" /><br>  My Own Artwork |

| Wonderswan                          | Virtual Boy                         |
| ----------------------------------- | ----------------------------------- |
|<img width="450" height="289" alt="Dog and Flower (4 0) WS" src="https://github.com/user-attachments/assets/d896c33f-dd4f-457d-bf61-31cb7118c571" /> <br> My Own Artwork| <img width="772" height="451" alt="Virtual Boy (4 0)" src="https://github.com/user-attachments/assets/ec826e04-f316-4630-8008-82d8b31b337d" /> <br>[VUENgine Platformer Demo](https://www.virtual-boy.com/homebrew/vuengine-platformer-demo/), [Fishbone](https://www.virtual-boy.com/homebrew/fishbone/), [Elevated Speed](https://www.virtual-boy.com/homebrew/elevated-speed/), and [Multi Color Demo](https://www.virtual-boy.com/homebrew/multi-color-demo/)|

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

* DoubleCherryGB & SameBoy: Set GBC Color Correction to "OFF".
* PokeMini & Beetle VB: Set the Palette: "Black & White".
* Beetle Cygne: Color Palette: "Grayscale", "Color Depth-Thousands (16-bit)". "60hz Mode off" when Mixed-Frames.

🟡**Part 5: SAVE YOUR WORK**
1. Head back to the "Main Menu" using and select the "Quick Menu" one last time.
3. Scroll down to "Overrides" and select it.
4. Choose Save "Core Override" or "Game Override" to have Super-Bit-Shader launch every session.
5. Congratulations, you are all set! Close the Retroarch menu and get back to the game.

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
* "Super-Bit-Shader" by Ashley the Pikachu (Digiflower5) and hunterk is Public Domain.
* "pixel-aa / to_lin" shaders by fishku are Public Domain.
* "mixed-frames" shader by jdgleaver is GNU General Public License.
* "gba-color" by Pokefan531 and hunterk is Public Domain.
* "gbc-color" by Pokefan531 and hunterk is Public Domain.
* "gdapt" by Sp00kyFox does not have a license listed.
* "vba-color" by PokeFan531, Mangler & hunterk is Public Domain.
* All separate supporting shaders included with SBS are from RA's Online Updater unmodified and have their own separate licenses.

------------------------------------------------------------------------------------------------------------------
**Extra Notes & Tips**
------------------------------------------------------------------------------------------------------------------
* Older releases of Super-Bit-Shader are included on this Github for archival purposes.
* You can use Retroarch "Overrides" to set your video driver per core if you need another display driver.
