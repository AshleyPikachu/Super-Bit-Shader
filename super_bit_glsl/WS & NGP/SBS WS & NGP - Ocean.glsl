// Super Bit Shader - WS & NGP
// Original Code by hunterk
// Testing & Code Tweaking by Digiflower5 (AshleyPikachu) & hunterk 
// Code license: public domain
// Project Inspired by Nispero & EADMASTER.

// Parameter lines go here:
#pragma parameter white_thresh "White Threshold (everything brighter is white)" 0.90 0.0 1.0 0.01
#pragma parameter first_thresh "Lightest Gray Threshold" 0.81 0.0 1.0 0.01
#pragma parameter second_thresh "Light Gray Threshold" 0.67 0.0 1.0 0.01
#pragma parameter third_thresh "Medium Gray Threshold" 0.55 0.0 1.0 0.01
#pragma parameter fourth_thresh "Med-Dark Gray Threshold" 0.34 0.0 1.0 0.01
#pragma parameter fifth_thresh "Dark Gray Threshold" 0.25 0.0 1.0 0.01
#pragma parameter sixth_thresh "Midnight Gray Threshold" 0.15 0.0 1.0 0.01
#pragma parameter seventh_thresh "Dark Threshold (everything darker is black)" 0.05 0.0 1.0 0.01

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
uniform COMPAT_PRECISION float fourth_thresh;
uniform COMPAT_PRECISION float fifth_thresh;
uniform COMPAT_PRECISION float sixth_thresh;
uniform COMPAT_PRECISION float black_thresh;
#else
#define white_thresh 0.90
#define first_thresh 0.81
#define second_thresh 0.67
#define third_thresh 0.55
#define fourth_thresh 0.34
#define fifth_thresh 0.25
#define sixth_thresh 0.15
#define seventh_thresh 0.05
#endif

void main()
{
   // palette
   vec3 white  = vec3(0.953,0.929,0.839); // White
   vec3 first = vec3(1.,0.855,0.678);
   vec3 second = vec3(0.51,0.78,0.898);
   vec3 third = vec3(0.412,0.643,0.686);
   vec3 fourth = vec3(0.365,0.4,0.549);
   vec3 fifth = vec3(0.212,0.231,0.318);
   vec3 sixth = vec3(0.247,0.349,0.369);
   vec3 black  = vec3(0.102,0.2,0.22); // Black

   vec3 texColor = COMPAT_TEXTURE(Source, vTexCoord).rgb;
   float luma = dot(texColor, vec3(0.2126, 0.7152, 0.0722));
   FragColor.rgb = (luma >= white_thresh) ? white : (luma < white_thresh && luma >= first_thresh) ? first : (luma < first_thresh && luma >= second_thresh) ? second : (luma < second_thresh && luma >= third_thresh) ? third : (luma < third_thresh && luma >= fourth_thresh) ? fourth : (luma < third_thresh && luma >= fifth_thresh) ? fifth : (luma < third_thresh && luma >= sixth_thresh) ? sixth : black;
   FragColor.a = 1.0;
} 
#endif