// Super Bit Shader - 16-Bit
// Recommended Console: Virtual Boy (Beetle VB)
// Original Code by hunterk
// Version 1.0: Testing & Code by Digiflower5 (AshleyPikachu) & hunterk
// Version 2.0: Testing, calibrating, color selection, and comments by Digiflower5 (AshleyPikachu)
// Code license: public domain
// Project Inspired by Nispero & EADMASTER.

//-------------------------------------------------------------------------------------------------
// GENERAL TIPS
//-------------------------------------------------------------------------------------------------
// If your only trying to change the colors scroll down to Palette Settings and change the Vec3 colors.
// Thresholds control how prominent a color is, they need to be calibrated for each console with trial and error.
// Keep content between the settings sections in sync with each other, otherwise the shader will break.

//-------------------------------------------------------------------------------------------------
// VIRTUAL BOY AND BRIGHTNESS
//-------------------------------------------------------------------------------------------------
// The Virtual Boy displays 4 shades at once, however it uses brightness control.
// Super Bit Shader interprets this as new colors, so 16 colors are a part of this shader.
// While this is not the entire brightness spectrum it allows for smooth transitions while providing color.

//-------------------------------------------------------------------------------------------------
// Color Parameters Settings - When changing a threshold edit the first number in each parameter.
// Example: "0.90" and not "0.90 0.0 1.0 0.01"
//-------------------------------------------------------------------------------------------------

#pragma parameter white_thresh "White Threshold (everything brighter is white)" 0.90 0.0 1.0 0.01
#pragma parameter first_thresh "1nd Threshold" 0.64 0.0 1.0 0.01
#pragma parameter second_thresh "2nd Threshold" 0.53 0.0 1.0 0.01
#pragma parameter third_thresh "3rd Threshold" 0.50 0.0 1.0 0.01
#pragma parameter fourth_thresh "4th Threshold" 0.48 0.0 1.0 0.01
#pragma parameter fifth_thresh "5th Threshold" 0.45 0.0 1.0 0.01
#pragma parameter sixth_thresh "6th Threshold" 0.40 0.0 1.0 0.01
#pragma parameter seventh_thresh "7th Threshold" 0.38 0.0 1.0 0.01
#pragma parameter eighth_thresh "th Threshold" 0.35 0.0 1.0 0.01
#pragma parameter ninth_thresh "9th Threshold" 0.30 0.0 1.0 0.01
#pragma parameter tenth_thresh "10th Threshold" 0.25 0.0 1.0 0.01
#pragma parameter eleventh_thresh "11th Threshod" 0.20 0.0 1.0 0.01
#pragma parameter twelfth_thresh "12th Threshold" 0.15 0.0 1.0 0.01
#pragma parameter thirteenth_thresh "13th Threshold" 0.10 0.0 1.0 0.01
#pragma parameter fourteenth_thresh "14th Threshold" 0.05 0.0 1.0 0.01
#pragma parameter black_thresh "Dark Threshold (everything darker is black)" 0.02 0.0 1.0 0.01

//-------------------------------------------------------------------------------------------------

#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif

COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;

uniform mat4 MVPMatrix;
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;

// compatibility #defines
#define vTexCoord TEX0.xy
#define SourceSize vec4(TextureSize, 1.0 / TextureSize) //either TextureSize or InputSize
#define OutSize vec4(OutputSize, 1.0 / OutputSize)

void main()
{
   gl_Position = MVPMatrix * VertexCoord;
   TEX0.xy = TexCoord.xy;
}

#elif defined(FRAGMENT)

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out COMPAT_PRECISION vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
uniform sampler2D Texture;
COMPAT_VARYING vec4 TEX0;

// compatibility #defines
#define Source Texture
#define vTexCoord TEX0.xy

#define SourceSize vec4(TextureSize, 1.0 / TextureSize) //either TextureSize or InputSize
#define OutSize vec4(OutputSize, 1.0 / OutputSize)

//-------------------------------------------------------------------------------------------------
// Compat Precision & Thresholds Settings
//-------------------------------------------------------------------------------------------------
// New Colors go after White but before Black. 
// Example: sevnth_thresh would go after sixth.

#ifdef PARAMETER_UNIFORM
uniform COMPAT_PRECISION float white_thresh;
uniform COMPAT_PRECISION float first_thresh;
uniform COMPAT_PRECISION float second_thresh;
uniform COMPAT_PRECISION float third_thresh;
uniform COMPAT_PRECISION float fourth_thresh;
uniform COMPAT_PRECISION float fifth_thresh;
uniform COMPAT_PRECISION float sixth_thresh;
uniform COMPAT_PRECISION float seventh_thresh;
uniform COMPAT_PRECISION float eighth_thresh;
uniform COMPAT_PRECISION float ninth_thresh;
uniform COMPAT_PRECISION float tenth_thresh;
uniform COMPAT_PRECISION float eleventh_thresh;
uniform COMPAT_PRECISION float twelfth_thresh;
uniform COMPAT_PRECISION float thirteenth_thresh;
uniform COMPAT_PRECISION float fourteenth_thresh;
uniform COMPAT_PRECISION float black_thresh;
#else
#endif

//-------------------------------------------------------------------------------------------------
// Palette Settings - These are Vec3 colors. Using a Hex to Vec3 converter is recommended.
//-------------------------------------------------------------------------------------------------
// The Virtual Boy displays 4 colors at once always, however the console uses brightness to create more colors.
// Shades here are organized by importance instead of just white, number and black.

void main()
{
// Core Palette - Standard Palette
   vec3 white  = vec3(1.,0.984,0.737);
   vec3 first = vec3(0.929,0.757,0.165);
   vec3 third = vec3(0.973,0.204,0.392);
   vec3 black  = vec3(0.008,0.,0.278); // Darkest Shade Period.

// Dark Palette - Secondary Palette, it's typically mixed with the Core Palette for dimmer games.
   vec3 second = vec3(1.,0.475,0.);
   vec3 fourth = vec3(0.918,0.145,0.325);
   vec3 fifth = vec3(0.824,0.071,0.486);
   vec3 ninth = vec3(0.471,0.157,0.475);

// Tansition Palette - Used to create transitions between the Core and Dark Palettes.
   vec3 sixth = vec3(0.71,0.012,0.416);
   vec3 seventh = vec3(0.675,0.,0.365);
   vec3 eighth = vec3(0.565,0.086,0.416);
   vec3 tenth = vec3(0.357,0.137,0.467);
   
// Black Tansition Palette - Used for fade to black transitions.
   vec3 eleventh = vec3(0.31,0.051,0.443);
   vec3 twelfth = vec3(0.188,0.067,0.482);
   vec3 thirteenth = vec3(0.122,0.043,0.431);
   vec3 fourteenth = vec3(0.043,0.012,0.322);

	  
//-------------------------------------------------------------------------------------------------
// Compat Texture Settings
//-------------------------------------------------------------------------------------------------
// New thresholds go after white. "black;" is required on the last threshold.
// black does not have its own threshold listed here and is just added at the end.

   vec3 texColor = COMPAT_TEXTURE(Source, vTexCoord).rgb;
   float luma = dot(texColor, vec3(0.2126, 0.7152, 0.0722));
   FragColor.rgb = 
   (luma >= white_thresh) ? white :
   (luma < white_thresh && luma >= first_thresh) ? first :
   (luma < first_thresh && luma >= second_thresh) ? second :
   (luma < second_thresh && luma >= third_thresh) ? third :
   (luma < third_thresh && luma >= fourth_thresh) ? fourth :
   (luma < fourth_thresh && luma >= fifth_thresh) ? fifth :
   (luma < fifth_thresh && luma >= sixth_thresh) ? sixth :
   (luma < sixth_thresh && luma >= seventh_thresh) ? seventh :
   (luma < seventh_thresh && luma >= eighth_thresh) ? eighth :
   (luma < eighth_thresh && luma >= ninth_thresh) ? ninth :
   (luma < ninth_thresh && luma >= tenth_thresh) ? tenth :
   (luma < tenth_thresh && luma >= eleventh_thresh) ? eleventh :
   (luma < eleventh_thresh && luma >= twelfth_thresh) ? twelfth :
   (luma < twelfth_thresh && luma >= thirteenth_thresh) ? thirteenth :
   (luma < thirteenth_thresh && luma >= fourteenth_thresh) ? fourteenth : black;
   FragColor.a = 1.0;
}
#endif