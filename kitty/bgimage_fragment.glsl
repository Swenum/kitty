#version GLSL_VERSION

uniform sampler2D image;
uniform float opacity;
in vec2 texcoord;
out vec4 color;

void main() {
    color = texture(image, texcoord);
    color = vec4(color.rgb, color.a * opacity);
}
