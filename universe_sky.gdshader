shader_type sky;

uniform vec3 sky_color : source_color;
uniform sampler2D noise;

void sky() {
	// Called for every visible pixel in the sky background, as well as all pixels
	// in the radiance cubemap.
	if (AT_CUBEMAP_PASS) {
		vec3 dir = EYEDIR;
		
		vec3 col = sky_color;
		
		if (texture(noise, SKY_COORDS).x > 0.7) {
			col = vec3(1.0, 1.0, 1.0);
			
		}
		// Complex color calculation

		COLOR = col.xyz;
		ALPHA = 1.0;
    } else {
		COLOR = texture(RADIANCE, EYEDIR).rgb;
    }
}
