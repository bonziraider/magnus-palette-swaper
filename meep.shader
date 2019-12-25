shader_type canvas_item;

uniform sampler2D pal; 

void fragment() 
{  
	vec4 tex = texture(TEXTURE,UV);

	if(tex.a != 0.0)
		tex = texture(pal,tex.rg);

COLOR = tex;
}