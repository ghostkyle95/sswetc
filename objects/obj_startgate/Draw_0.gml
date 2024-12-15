// draw parallax
if (parallax.alpha != 1) {
	var _w = sprite_get_width(sprite_index), _h = sprite_get_height(sprite_index), 
	_mask = asset_get_index(sprite_get_name(sprite_index) + "_mask");
	
	if !surface_exists(parallax.surface) parallax.surface = surface_create(_w, _h);
	surface_set_target(parallax.surface);
	
	// handle layer movement
	for (var _i = 0; _i < array_length(parallax.array); _i++;) {
		var _struct = parallax.array[_i];
		_struct.x -= _struct.speed;
		draw_sprite_tiled(_struct.sprite_index, 0, _struct.x, 0);
	};
	
	// draw layers into whitespace
	gpu_set_blendmode(bm_subtract);
	if sprite_exists(_mask) draw_sprite(_mask, 0, 0, 0);
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
	draw_surface(parallax.surface, x - _w / 2, y - _h);
} else surface_free(parallax.surface);

draw_sprite(sprite_index, 0, x, y);
parallax.alpha = lerp(parallax.alpha, !parallax.draw, 0.05); 
draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_white, parallax.alpha);

// display statistics
ini_open("saveData.ini");
if drawtext {
	var _height = sprite_get_height(sprite_index), _spacing = 75,
	_points = ini_read_real("Score", level, 0), 
	_secrets = ini_read_real("SecretsFound", level, 0),
	_laps = ini_read_real("Laps", level, 0), _plural = (_laps > 1 ? "LAPS" : "LAP");
	
	// if level has data on record, draw text
	if (_points != 0) {
		draw_set_font(global.font);
		draw_text(x, y - _height - _spacing, _points);
		
		draw_set_font(global.smallfont);
		_spacing -= 50;
		draw_text(x, y - _height - _spacing, $"{_secrets} OUT OF 3 SECRETS FOUND");
		
		if (_laps > 0) { 
			_spacing -= 25;
			draw_text(x, y - _height - _spacing, $"{_laps} {_plural}");
		};
	};
};
ini_close();
