scr_tvsprites();
event_user(0);
if (room == steamy_1)
{
	global.srank = 22000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (room == entryway_1)
{
	global.srank = 10000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (room == molasses_1)
{
	global.srank = 21000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (room == mines_1)
{
	global.srank = 24000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (showtext)
{
	xi = 500 + random_range(1, -1);
	if (yi > 475)
		yi -= 5;
}
if (!showtext)
{
	xi = 500 + random_range(1, -1);
	if (yi < 675)
		yi += 1;
}
if (!(obj_player.state == states.knightpep && obj_player.state == states.knightpepattack && obj_player.state == states.knightpepslopes))
	once = false;
if (obj_player.y < (180 + obj_camera.Cam_y) && obj_player.x > ((camera_get_view_width(view_camera[0]) - 350) + obj_camera.Cam_x))
{
	DrawY = lerp(DrawY, -300, 0.15);
	alpha = 0.5;
}
else
{
	DrawY = lerp(DrawY, 0, 0.15);
	alpha = 1;
}

if (obj_player.state == states.keyget)
{
	showtext = true;
	message = "Key obtained!";
	alarm[0] = 50;
}

var _secret = (string_count("secret", room_get_name(room)) != 0);
if (tvsprite != spr_tvturnon && ds_queue_size(global.newhudtvanim) < 1 && tvlength <= 0)
{
	switch (obj_player.state)
	{
		default:
			// enviornment check
			var _idlespr = idletvspr;
			if global.panic _idlespr = panictvspr;
			if _secret _idlespr = secrettvspr;
			
			// animate idle
			if (_idlespr == idletvspr) {
				var _change = (tvsprite == tvchange1 || tvsprite == tvchange2);
				if (tvsprite != idletvspr && !_change) {
					tvcount = choose(500, 450, 400, 550);
					tvsprite = idletvspr;
					image_index = 0;
				};
				if (tvsprite == idletvspr && tvcount < 1) {
					tvsprite = choose(tvchange1, tvchange2);
					image_index = 0;
				};
				if (_change && animation_end()) {
					tvcount = choose(500, 450, 400, 550);
					tvsprite = idletvspr;
					image_index = 0;
				};
				if (tvsprite == idletvspr) tvcount--;
			};
			
			// emotion check
			if (global.combo < 3) _idlespr = combotvspr;
			if obj_player.angry _idlespr = angrytvspr;
			
			// speed check
			if (obj_player.movespeed >= 6) _idlespr = machtvspr;
			else if (obj_player.movespeed >= 12) _idlespr = mach3tvspr;
			else if (obj_player.movespeed > 20) _idlespr = crazyruntvspr;
			
			tvsprite = _idlespr;
			OLDtvsprite = tvsprite;
		break;
		case states.minecart: tvsprite = minecarttvspr; break;
		case states.fireass: tvsprite = firetvspr; break;
		case states.bombpep: tvsprite = bombtvspr; break;
		case states.fling: tvsprite = orbtvspr; break;
		case states.cotton: case states.cottondrill: case states.cottonroll:
			tvsprite = cottontvspr; break;
		case states.puddle: tvsprite = sliptvspr; break;
		case states.hurt: tvsprite = hurttvspr; break;
		case states.freefallland: case states.Sjumpland: tvsprite = impacttvspr; break;
	};
	
	// draw static
	if (OLDtvsprite != tvsprite) {
		staticdraw = true;
		savedsprite = OLDtvsprite;
		OLDtvsprite = tvsprite;
	};
}
else if (tvsprite != spr_tvturnon && tvsprite != spr_tvturnon_nopropeller && ds_queue_size(global.newhudtvanim) > 1)
{
	tvsprite = ds_queue_dequeue(global.newhudtvanim);
	tvlength = ds_queue_dequeue(global.newhudtvanim);
}

if (tvlength > 0 && OLDtvsprite != tvsprite)
{
	staticdraw = true;
	savedsprite = OLDtvsprite;
	OLDtvsprite = tvsprite;
}
tvlength--;

if (global.key_inv)
	invsprite = spr_invkey;
else if (global.treat)
	invsprite = spr_invdonut;
else
	invsprite = spr_invempty;
if ((tvsprite == spr_tvturnon || tvsprite == spr_tvturnon_nopropeller) && floor(image_index) == (image_number - 1))
	tvsprite = idletvspr;
sprite_index = tvsprite;
global.combotime = clamp(global.combotime, 0, 60);

// background sprite
switch global.levelname {
	default: tvbgsprite = spr_tvbg_hub; break;
	case "entryway": tvbgsprite = spr_tvbg_wafer; break;
	case "steamy": tvbgsprite = spr_tvbg_steamy; break;
	case "molasses": tvbgsprite = spr_tvbg_mlass; break;
	case "mines": tvbgsprite = spr_tvbg_mines; break;
};
if _secret tvbgsprite = spr_tvbg_secret; 
var _panicbg = asset_get_index($"{tvbgsprite}_panic");
if (global.panic && sprite_exists(_panicbg)) tvbgsprite = _panicbg;
