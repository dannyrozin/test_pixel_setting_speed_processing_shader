#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D texture;

varying vec4 vertColor;
varying vec4 vertTexCoord;
in vec4 gl_FragCoord;
uniform float paramx;
uniform float paramy;



void main() {
	float dist = sqrt((vertTexCoord.x-paramx)*(vertTexCoord.x-paramx)+(vertTexCoord.y-paramy)*(vertTexCoord.y-paramy));
	gl_FragColor = vec4(dist,dist,1, 1);
}


