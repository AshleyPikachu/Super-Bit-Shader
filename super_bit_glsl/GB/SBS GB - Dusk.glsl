// Super Bit Shader - GB
// Original Code by hunterk
// Testing & Code Tweaking by Digiflower5 (AshleyPikachu) & hunterk 
// Code license: public domain
// Project Inspired by Nispero & EADMASTER.

// Parameter lines go here:
#pragma parameter white_thresh "White Threshold (everything brighter is white)" 0.71 0.0 1.0 0.01
#pragma parameter first_thresh "Light Gray Threshold" 0.35 0.0 1.0 0.01
#pragma parameter second_thresh "Black Gray Threshold (everything darker is black)" 0.20 0.0 1.0 0.01

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

#ifdef PARAMETER_UNIFORM
uniform COMPAT_PRECISION float white_thresh;
uniform COMPAT_PRECISION float first_thresh;
uniform COMPAT_PRECISION float second_thresh;
uniform COMPAT_PRECISION float third_thresh;
uniform COMPAT_PRECISION float black_thresh;
#else
#define white_thresh 0.71
#define first_thresh 0.35
#define second_thresh 0.20
#endif

void main()
{
   // palette
   vec3 white  = vec3(0.847,0.867,1.); // Light
   vec3 first = vec3(0.882,0.682,0.686); // Medium
   vec3 second = vec3(0.639,0.396,0.639); // Dark
   vec3 black  = vec3(0.18,0.184,0.294); // Black

   vec3 texColor = COMPAT_TEXTURE(Source, vTexCoord).rgb;
   float luma = dot(texColor, vec3(0.2126, 0.7152, 0.0722));
   FragColor.rgb = (luma >= white_thresh) ? white : (luma < white_thresh && luma >= first_thresh) ? first : (luma < first_thresh && luma >= second_thresh) ? second : black;
   FragColor.a = 1.0;
} 
#endif
