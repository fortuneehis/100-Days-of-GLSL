/* Main function, uniforms & utils */
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

// constants that i will use later :)
#define PI_TWO 1.570796326794897
#define PI 3.141592653589793
#define TWO_PI 6.283185307179586

void main() {
  vec3 color = vec3(sin(u_time));
  gl_FragColor = vec4(color, 1.0);
}