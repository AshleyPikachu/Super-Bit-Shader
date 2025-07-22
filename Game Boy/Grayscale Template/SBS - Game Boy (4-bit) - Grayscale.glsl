// Super Bit Shader - 4-Bit
// Recommended Console: Game Boy (DoubleCherryGB, TGB Dual)
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
// GAME BOY INFORMATION
//-------------------------------------------------------------------------------------------------
// This shader is for original Game Boy monochrome games.
// It uses 4 shades of monochrome grey, and expects a black and white palette to work.
// This shader was not designed for Super Game Boy mode and will not work with it properly.

//-------------------------------------------------------------------------------------------------
// Color Parameters Settings - When changing a threshold edit the first number in each parameter.
// Example: "0.90" and not "0.90 0.0 1.0 0.01"
//-------------------------------------------------------------------------------------------------

#pragma parameter white_thresh "White Threshold (everything brighter is white)" 0.90 0.0 1.0 0.01
#pragma parameter first_thresh "1st Threshold" 0.50 0.0 1.0 0.01
#pragma parameter second_thresh "2nd Threshold" 0.35 0.0 1.0 0.01
#pragma parameter black_thresh "Dark Threshold (everything darker is black)" 0.05 0.0 1.0 0.01

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
uniform COMPAT_PRECISION float black_thresh;
#else
#endif

//-------------------------------------------------------------------------------------------------
// Palette Settings - These are Vec3 colors. Using a Hex to Vec3 converter is recommended.
//-------------------------------------------------------------------------------------------------
void main()
{
   // palette
   vec3 white  = vec3(1.,1.,1.); // White
   vec3 first = vec3(0.678,0.682,0.678);
   vec3 second = vec3(0.353,0.349,0.353);
   vec3 black  = vec3(0.,0.,0.); // Black
   
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
   (luma < first_thresh && luma >= second_thresh) ? second : black;
   FragColor.a = 1.0;
}
#endif