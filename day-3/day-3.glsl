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

float radius = .3;

float drawCircle(float radius, vec2 position) {
  float distanceToCenter = distance(position, vec2(.5));
  return smoothstep(radius, distanceToCenter, sin(u_time * TWO_PI));
}

void main() {
  vec2 pixelPosition = gl_FragCoord.xy / u_resolution.xy;
  float color = drawCircle(radius, pixelPosition);
  if (color == 0.) {
    gl_FragColor = vec4(1.0);
  } else {
    gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
  }
}