draw_self()
if drawtext
{
	ini_open("saveData.ini");
	
	var points = ini_read_real("Score", level, 0)
	var laps = ini_read_real("Laps", level, 0)
		
	var secretsfound = ini_read_real("SecretsFound", level, 0)
	if secretsfound == -4
		secretsfound = 0
		
	if points != 0
	{
		draw_set_font(global.font);
		draw_text(x, y - 135, string(points));
		draw_set_font(global.smallfont);
		draw_text(x, y - 75, string(secretsfound) + " OUT OF 3 SECRETS FOUND");
		if laps != 0 && laps != -4
			draw_text(x, y - 50, string(laps) + " LAPS");
	}
}