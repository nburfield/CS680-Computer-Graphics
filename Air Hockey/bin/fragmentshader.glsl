varying vec2 uv;
uniform sampler2D gSampler;
void main(void)
   {
    gl_FragColor = texture2D(gSampler, uv.xy);
   }
