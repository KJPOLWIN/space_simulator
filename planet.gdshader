shader_type spatial;

uniform vec3 land_color : source_color;
uniform vec3 water_color : source_color;
uniform float land_threshold;
uniform sampler2D noise;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {

	bool land = texture(noise, UV).x > land_threshold;
	if(land)
	{
		ALBEDO = land_color;
		ROUGHNESS = 1.0;
	}
	else
	{
		ALBEDO = water_color;
		ROUGHNESS = 0.1;
	}
	METALLIC = 0.0;


}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
