attribute vec3 v_position;
attribute vec2 v_uv;
varying vec2 uv;
uniform mat4 mvpMatrix;
void main(void)
   {
    gl_Position = mvpMatrix * vec4(v_position, 1.0);
    uv = v_uv;
   }
