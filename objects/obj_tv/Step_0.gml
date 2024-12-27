scr_tvsprites();
event_user(0);

// rank requirement
if (room == asset_get_index($"{global.levelname}_1")) {
	switch global.levelname {
		case "entryway": global.srank = 14000; break;
		case "steamy": global.srank = 22000; break;
		case "molasses": global.srank = 21000; break;
		case "mines": global.srank = 24000; break;
	};
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.arank * 2;
	global.crank = global.arank * 3;
};

// background sprite
var _secret = (string_count("secret", room_get_name(room)) != 0);
switch global.levelname {
	default: tvbgsprite = spr_tvbg_hub; break;
	case "entryway": tvbgsprite = spr_tvbg_wafer; break;
	case "steamy": tvbgsprite = spr_tvbg_steamy; break;
	case "molasses": tvbgsprite = spr_tvbg_mlass; break;
	case "mines": tvbgsprite = spr_tvbg_mines; break;
};
if _secret tvbgsprite = spr_tvbg_secret;
if global.panic && sprite_exists(asset_get_index($"{tvbgsprite}_panic"))
	tvbgsprite = asset_get_index($"{tvbgsprite}_panic");

// draw position
xi = 500 + random_range(1, -1);
yi = approach(yi, showtext ? 475 : 675, showtext ? 5 : 1);

var _collide = (obj_player.y < 180 + obj_camera.Cam_y && obj_player.x > view_hport[0] - 350 + obj_camera.Cam_x);
DrawY = lerp(DrawY, _collide ? -300 : 0, 0.15);
alpha = (_collide ? 0.5 : 1);

if (obj_player.state == states.keyget) {
	showtext = true;
	message = "Key obtained!";
	alarm[0] = 50;
};

var _change = function() {
	if (OLDtvsprite != tvsprite) {
		animation.change.image_index = 0;
		staticdraw = true;
		savedsprite = OLDtvsprite;
		OLDtvsprite = tvsprite;
	}
};

// change sprite (this is where all the MAGIC happens)
if (string_count("turnon", sprite_get_name(sprite_index)) == 0 && 
ds_queue_size(global.newhudtvanim) < 1 && tvlength <= 0)
{
	switch (obj_player.state)
	{
		// normal
		default:
			if (tvsprite != tvchange1 && tvsprite != tvchange2) {
				if (tvsprite != idletvspr) tvsprite = idletvspr;
				else {
					tvcount--;
					if (tvcount <= 0) {
						tvsprite = choose(tvchange1, tvchange2);
						image_index = 0;
					}
				}
			} else if animation_end() {
				tvcount = choose(500, 450, 400, 550);
				tvsprite = idletvspr;
				image_index = 0;
			};
			
			if global.panic tvsprite = panictvspr;
			if _secret tvsprite = secrettvspr;
			
			if (global.combo >= 3) tvsprite = combotvspr;
			else if obj_player.angry tvsprite = angrytvspr;
			
			OLDtvsprite = tvsprite;
		break;
		case states.mach2: case states.machslide: case states.climbwall: case states.mach3:
			tvsprite = machtvspr;
			
			if (obj_player.movespeed >= 12) tvsprite = mach3tvspr;
			if (obj_player.sprite_index == obj_player.spr_crazyrun) tvsprite = crazyruntvspr;
			
			OLDtvsprite = tvsprite;
		break;
		
		// transformations
		case states.minecart: tvsprite = minecarttvspr; break;
		case states.fireass: tvsprite = firetvspr; break;
		case states.bombpep: tvsprite = bombtvspr; break;
		case states.fling: tvsprite = orbtvspr; break;
		case states.cotton: case states.cottondrill: case states.cottonroll:
			tvsprite = cottontvspr; break;
		
		// misc.
		case states.puddle: tvsprite = sliptvspr; break;
		case states.hurt: tvsprite = hurttvspr; break;
		case states.freefallland: case states.Sjumpland: tvsprite = impacttvspr; break;
	};
	_change();
}
else if (string_count("turnon", sprite_get_name(sprite_index)) == 0 && 
ds_queue_size(global.newhudtvanim) > 1)
{
	tvsprite = ds_queue_dequeue(global.newhudtvanim);
	tvlength = ds_queue_dequeue(global.newhudtvanim);
}
if (tvlength > 0) _change();
tvlength--;

invsprite = spr_invempty;
if global.key_inv invsprite = spr_invkey;
else if global.treat invsprite = spr_invdonut;

if (string_count("turnon", sprite_get_name(sprite_index)) != 0 && animation_end()) tvsprite = idletvspr;
sprite_index = tvsprite;
global.combotime = clamp(global.combotime, 0, 60);
