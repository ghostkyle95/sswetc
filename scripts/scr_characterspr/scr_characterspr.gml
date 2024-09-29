function scr_characterspr()
{
	if (character == "P")
	{
		spr_idle = spr_player_idle;
		spr_move = spr_player_walk;
		spr_crawl = spr_player_crawl;
		spr_hurt = spr_player_hurt;
		spr_jump = spr_player_jump;
		spr_jump2 = spr_player_jump;
		spr_fall = spr_player_fall;
		spr_fall2 = spr_player_fall;
		spr_crouch = spr_player_crouch;
		spr_crouchjump = spr_player_crouchjump;
		spr_crouchfall = spr_player_crouchfall;
		spr_couchstart = spr_player_crouchstart;
		spr_bump = spr_player_bump;
		spr_land = spr_player_land;
		spr_land2 = spr_player_land2;
		spr_lookdoor = spr_player_lookdoor;
		spr_walkfront = spr_player_walkfront;
		spr_victory = spr_player_entergate;
		spr_Ladder = spr_player_ladder;
		spr_laddermove = spr_player_ladderup;
		spr_ladderdown = spr_player_ladderdown;
		spr_keyget = spr_player_keyget;
		spr_crouchslip = spr_player_machslide;
		spr_mach1 = spr_player_mach1;
		spr_mach = spr_player_mach;
		spr_secondjump1 = spr_player_secondjump1;
		spr_secondjump2 = spr_player_secondjump2;
		spr_machslidestart = spr_player_machslidestart;
		spr_machslide = spr_player_machsliding;
		spr_machslideend = spr_player_machslideend;
		spr_machslideboost = spr_player_machslideboost;
		spr_land2 = spr_player_land2;
		spr_punch = spr_player_punch;
		spr_backkick = spr_player_backkick;
		spr_shoulder = spr_player_shoulder;
		spr_uppunch = spr_player_uppunch;
		spr_stomp = spr_player_stomp;
		spr_stompprep = spr_player_stompprep;
		spr_crouchslide = spr_player_machslide;
		spr_crouch = spr_player_crouch;
		spr_bump = spr_player_bump;
		spr_victory = spr_player_entergate;
		spr_hurt = spr_player_hurt;
		spr_climbwall = spr_player_climbwall;
		spr_grab = spr_player_grab;
		spr_mach2jump = spr_player_mach2jump;
		spr_Timesup = spr_player_timeup;
		spr_deathstart = spr_player_deathstart;
		spr_deathend = spr_player_deathend;
		spr_machpunch1 = spr_player_machpunch1;
		spr_machpunch2 = spr_player_machpunch2;
		spr_hurtjump = spr_player_hurt;
		spr_entergate = spr_player_entergate;
		spr_gottreasure = spr_player_entergate;
		spr_bossintro = spr_player_bossintro;
		spr_hurtidle = spr_player_hurtidle;
		spr_hurtwalk = spr_player_hurtwalk;
		spr_suplexmash1 = spr_player_suplexmash1;
		spr_suplexmash2 = spr_player_suplexmash2;
		spr_suplexmash3 = spr_player_suplexmash3;
		spr_suplexmash4 = spr_player_suplexmash4;
		spr_tackle = spr_player_tackle;
		spr_airdash1 = spr_player_airdash1;
		spr_airdash2 = spr_player_airdash2;
		spr_keyget = spr_player_keyget;
		spr_idle1 = spr_player_idle;
		spr_idle2 = spr_player_idle;
		spr_idle3 = spr_player_idle;
		spr_suplexdash = spr_player_suplexdash;
		spr_piledriver = spr_player_piledriver;
		spr_piledriverland = spr_player_piledriverland;
		spr_charge = spr_player_charge;
		spr_palette = spr_pal;
		spr_caneidle = spr_player_caneidle;
		spr_caneslam = spr_player_caneslam;
		spr_canewalk = spr_player_canewalk;
		spr_canesuplex = spr_player_canesuplex;
		spr_canehit = spr_player_canehit;
		spr_uppizzabox = spr_player_uppizzabox;
		spr_downpizzabox = spr_player_downpizzabox;
		spr_tumblestart = spr_player_tumblestart;
		spr_tumble = spr_player_tumble;
		spr_tumbleend = spr_player_tumbleend;
		spr_machroll = spr_player_machroll;
		spr_dive = spr_player_dive;
		spr_cottonidle = spr_cotton_idle;
		spr_escapeidle = spr_player_escapeidle;
		spr_timesupidle = spr_player_timesupidle;
		
		spr_taunt = spr_pizzelle_taunt;
		spr_winding = spr_player_winding;
		spr_piledriverstart = spr_player_piledriverstart;
		spr_superjumpprep = spr_player_superjumpprep;
		spr_superjumpleft = spr_player_superjumpleft;
		spr_superjumpright = spr_player_superjumpright;
		spr_superjump = spr_player_superjump;
		spr_superjumpland = spr_player_superjumpland;
		spr_superjumppreplight = spr_player_superjumppreplight;
		spr_mach3hitwall = spr_player_mach3hitwall;
		spr_mach4 = spr_player_mach4;
		spr_machtumble = spr_player_machtumble;
		spr_machfreefall = spr_player_machfreefall;
		spr_crouchslide = spr_player_crouchslide;
		spr_supertaunt1 = spr_player_supertaunt1;
		spr_supertaunt2 = spr_player_supertaunt2;
		spr_supertaunt3 = spr_player_supertaunt3;
		spr_ceilingcrash = spr_player_ceilingcrash;
		spr_rollgetup = spr_player_rollgetup;
		spr_bodyslamstart = spr_player_bodyslamstart;
		spr_bodyslamland = spr_player_bodyslamland;
		spr_bodyslamfall = spr_player_bodyslamfall;
		spr_crusherstart = spr_player_bodyslamstartOLD;
		spr_crusherland = spr_player_bodyslamlandOLD;
		spr_crusherfall = spr_player_bodyslamfallOLD;
		spr_suplexdashCancel = spr_player_suplexdashCancel;
		spr_facestomp = spr_player_facestomp;
		spr_freefall = spr_player_freefall;
		spr_freefall2 = spr_player_freefall2;
		spr_candyidle = spr_player_candyidle;
		spr_candybegin = spr_player_candybegin;
		spr_candyup = spr_player_candyup;
		spr_candytransitionup = spr_player_candytransitionup;
		spr_uppercutbegin = spr_player_uppercutbegin;
		spr_uppercutend = spr_player_uppercutend;
		spr_freefallland = spr_player_freefallland;
		spr_mach3jump = spr_player_mach3jump;
		spr_plrdashpad = spr_player_dashpad;
		spr_crazyrun = spr_player_crazyrun;
		spr_machslideboost3 = spr_player_machslideboost3;
		spr_3hpidle = spr_player_3hpidle;
		spr_3hpwalk = spr_player_3hpwalk;
		spr_facehurtup = spr_player_facehurtup;
		spr_facehurt = spr_player_facehurt;
		spr_slipnslide = spr_player_slipnslide;
		spr_slipnslideend = spr_player_slipnslideend;
		spr_slipnslidestart = spr_player_slipnslidestart;
		spr_minecartjump = spr_player_minecartjump;
		spr_plrminecart = spr_player_minecart;
		spr_minecartfall = spr_player_minecartfall;
		spr_minecartfast = spr_player_minecartfast;
		spr_minecartland = spr_player_minecartland;
		spr_minecartfastland = spr_player_minecartfastland;
		spr_hurtroll = spr_player_hurtroll;
		spr_outofcontrolfall = spr_player_outofcontrolfall;
		spr_enterkey = spr_player_enterkey;
		spr_swingding = spr_player_swingding;
		spr_swingdingend = spr_player_swingdingend;
		spr_haulingstart = spr_player_haulingstart;
		spr_haulingidle = spr_player_haulingidle;
		spr_haulingwalk = spr_player_haulingwalk;
		spr_haulingjump = spr_player_haulingjump;
		spr_haulingfall = spr_player_haulingfall;
		spr_haulingland = spr_player_haulingland;
		spr_uppercutfinishingblow = spr_player_uppercutfinishingblow;
		spr_blockbreak1 = spr_player_blockbreak1;
		spr_blockbreak2 = spr_player_blockbreak2;
		spr_blockbreak3 = spr_player_blockbreak3;
		spr_blockbreak4 = spr_player_blockbreak4;
		spr_blockbreak5 = spr_player_blockbreak5;
		spr_blockbreak6 = spr_player_blockbreak6;
		spr_blockbreak7 = spr_player_blockbreak7;
		spr_squished = spr_player_squished;
		spr_firebutt = spr_player_fireass;
		spr_firebuttend = spr_player_fireassend;
		spr_catched = spr_player_catched;
		spr_donutget = spr_player_donutget;
	}
	if (character == "N")
	{
		spr_idle = spr_pizzano_idle;
		spr_move = spr_pizzano_walk;
		spr_crawl = spr_pizzano_crawl;
		spr_idle = spr_pizzano_idle;
		spr_hurt = spr_pizzano_hurt;
		spr_jump = spr_pizzano_jump;
		spr_jump2 = spr_pizzano_jump;
		spr_fall = spr_pizzano_fall;
		spr_fall2 = spr_pizzano_fall;
		spr_crouch = spr_pizzano_crouch;
		spr_crouchjump = spr_player_crouchjump;
		spr_crouchfall = spr_player_crouchfall;
		spr_couchstart = spr_player_crouchstart;
		spr_bump = spr_player_bump;
		spr_land = spr_player_idle;
		spr_land2 = spr_player_walk;
		spr_lookdoor = spr_player_lookdoor;
		spr_walkfront = spr_pizzano_walkfront;
		spr_victory = spr_player_entergate;
		spr_Ladder = spr_pizzano_ladder;
		spr_laddermove = spr_pizzano_laddermoveup;
		spr_ladderdown = spr_pizzano_laddermoveup;
		spr_keyget = spr_player_keyget;
		spr_crouchslip = spr_player_machslide;
		spr_mach1 = spr_pizzano_mach1;
		spr_mach = spr_pizzano_mach2;
		spr_secondjump1 = spr_player_secondjump1;
		spr_secondjump2 = spr_player_secondjump2;
		spr_machslidestart = spr_player_machslidestart;
		spr_machslide = spr_player_machsliding;
		spr_machslideend = spr_player_machslideend;
		spr_machslideboost = spr_player_machslideboost;
		spr_land2 = spr_player_land2;
		spr_punch = spr_player_punch;
		spr_backkick = spr_player_backkick;
		spr_shoulder = spr_player_shoulder;
		spr_uppunch = spr_player_uppunch;
		spr_stomp = spr_player_stomp;
		spr_stompprep = spr_player_stompprep;
		spr_crouchslide = spr_player_machslide;
		spr_crouch = spr_player_crouch;
		spr_bump = spr_player_bump;
		spr_victory = spr_player_entergate;
		spr_hurt = spr_player_hurt;
		spr_climbwall = spr_player_climbwall;
		spr_grab = spr_player_grab;
		spr_mach2jump = spr_pizzano_twirl;
		spr_Timesup = spr_pizzano_twirl;
		spr_deathstart = spr_player_deathstart;
		spr_deathend = spr_player_deathend;
		spr_machpunch1 = spr_player_machpunch1;
		spr_machpunch2 = spr_player_machpunch2;
		spr_hurtjump = spr_pizzano_hurt;
		spr_entergate = spr_player_entergate;
		spr_gottreasure = spr_player_entergate;
		spr_bossintro = spr_player_bossintro;
		spr_hurtidle = spr_player_hurtidle;
		spr_hurtwalk = spr_player_hurtwalk;
		spr_suplexmash1 = spr_player_suplexmash1;
		spr_suplexmash2 = spr_player_suplexmash2;
		spr_suplexmash3 = spr_player_suplexmash3;
		spr_suplexmash4 = spr_player_suplexmash4;
		spr_tackle = spr_player_tackle;
		spr_airdash1 = spr_player_airdash1;
		spr_airdash2 = spr_player_airdash2;
		spr_keyget = spr_player_keyget;
		spr_idle1 = spr_idle;
		spr_idle2 = spr_idle;
		spr_idle3 = spr_idle;
		spr_suplexdash = spr_player_suplexdash;
		spr_piledriver = spr_player_piledriver;
		spr_piledriverland = spr_player_piledriverland;
		spr_charge = spr_player_charge;
		spr_palette = spr_palp;
		spr_caneidle = spr_player_caneidle;
		spr_canewalk = spr_player_canewalk;
		spr_canesuplex = spr_player_canesuplex;
		spr_canehit = spr_player_canehit;
		spr_machroll = spr_pizzano_machroll;
		
		spr_taunt = spr_pizzano_taunt;
		spr_winding = spr_player_winding;
		spr_piledriverstart = spr_player_piledriverstart;
		spr_superjumpprep = spr_pizzano_sjumpprep;
		spr_superjumpleft = spr_pizzano_sjumpprep;
		spr_superjumpright = spr_pizzano_sjumpprep;
		spr_superjump = spr_pizzano_sjump;
		spr_superjumpland = spr_player_superjumpland;
		spr_superjumppreplight = spr_pizzano_sjumpprep;
		spr_mach3hitwall = spr_pizzano_mach3hitwall;
		spr_mach4 = spr_pizzano_mach4;
		spr_machtumble = spr_player_machtumble;
		spr_machfreefall = spr_player_machfreefall;
		spr_crouchslide = spr_pizzano_crouchslide;
		spr_supertaunt1 = spr_player_supertaunt1;
		spr_supertaunt2 = spr_player_supertaunt2;
		spr_supertaunt3 = spr_player_supertaunt3;
		spr_ceilingcrash = spr_player_ceilingcrash;
		spr_rollgetup = spr_player_rollgetup;
		spr_bodyslamstart = spr_player_bodyslamstart;
		spr_bodyslamland = spr_player_bodyslamland;
		spr_bodyslamfall = spr_player_bodyslamfall;
		spr_crusherstart = spr_player_bodyslamstartOLD;
		spr_crusherland = spr_player_bodyslamlandOLD;
		spr_crusherfall = spr_player_bodyslamfallOLD;
		spr_suplexdashCancel = spr_player_suplexdashCancel;
		spr_facestomp = spr_player_facestomp;
		spr_freefall = spr_player_freefall;
		spr_freefall2 = spr_player_freefall2;
		spr_candyidle = spr_player_candyidle;
		spr_candybegin = spr_player_candybegin;
		spr_candyup = spr_player_candyup;
		spr_candytransitionup = spr_player_candytransitionup;
		spr_uppercutbegin = spr_player_uppercutbegin;
		spr_uppercutend = spr_player_uppercutend;
		spr_freefallland = spr_player_freefallland;
		spr_mach3jump = spr_player_mach3jump;
		spr_plrdashpad = spr_player_dashpad;
		spr_crazyrun = spr_pizzano_crazyrun;
		spr_machslideboost3 = spr_player_machslideboost3;
		spr_3hpidle = spr_player_3hpidle;
		spr_3hpwalk = spr_player_3hpwalk;
		spr_facehurtup = spr_player_facehurtup;
		spr_facehurt = spr_player_facehurt;
		spr_slipnslide = spr_player_slipnslide;
		spr_slipnslideend = spr_player_slipnslideend;
		spr_slipnslidestart = spr_player_slipnslidestart;
		spr_minecartjump = spr_player_minecartjump;
		spr_plrminecart = spr_player_minecart;
		spr_minecartfall = spr_player_minecartfall;
		spr_minecartfast = spr_player_minecartfast;
		spr_minecartland = spr_player_minecartland;
		spr_minecartfastland = spr_player_minecartfastland;
		spr_hurtroll = spr_player_hurtroll;
		spr_outofcontrolfall = spr_player_outofcontrolfall;
		spr_enterkey = spr_player_enterkey;
		spr_swingding = spr_player_swingding;
		spr_swingdingend = spr_player_swingdingend;
		spr_haulingstart = spr_player_haulingstart;
		spr_haulingidle = spr_player_haulingidle;
		spr_haulingwalk = spr_player_haulingwalk;
		spr_haulingjump = spr_player_haulingjump;
		spr_haulingfall = spr_player_haulingfall;
		spr_haulingland = spr_player_haulingland;
		spr_uppercutfinishingblow = spr_player_uppercutfinishingblow;
		spr_blockbreak1 = spr_player_blockbreak1;
		spr_blockbreak2 = spr_player_blockbreak2;
		spr_blockbreak3 = spr_player_blockbreak3;
		spr_blockbreak4 = spr_player_blockbreak4;
		spr_blockbreak5 = spr_player_blockbreak5;
		spr_blockbreak6 = spr_player_blockbreak6;
		spr_blockbreak7 = spr_player_blockbreak7;
		spr_squished = spr_player_squished;
		spr_firebutt = spr_player_fireass;
		spr_firebuttend = spr_player_fireassend;
		spr_catched = spr_player_catched;
		spr_donutget = spr_player_donutget;
	}
	if (character == "G")
	{
		spr_idle = spr_gumbob_idle;
		spr_move = spr_gumbob_walk;
		spr_crawl = spr_player_crawl;
		spr_idle = spr_gumbob_idle;
		spr_hurt = spr_gumbob_hurt;
		spr_jump = spr_gumbob_jump;
		spr_jump2 = spr_gumbob_jump;
		spr_fall = spr_gumbob_fall;
		spr_fall2 = spr_gumbob_fall;
		spr_crouch = spr_player_crouch;
		spr_crouchjump = spr_player_crouchjump;
		spr_crouchfall = spr_player_crouchfall;
		spr_couchstart = spr_player_crouchstart;
		spr_bump = spr_player_bump;
		spr_land = spr_player_land;
		spr_land2 = spr_player_land2;
		spr_lookdoor = spr_player_lookdoor;
		spr_walkfront = spr_player_walkfront;
		spr_victory = spr_player_entergate;
		spr_Ladder = spr_player_ladder;
		spr_laddermove = spr_player_ladderup;
		spr_ladderdown = spr_player_ladderdown;
		spr_keyget = spr_player_keyget;
		spr_crouchslip = spr_player_machslide;
		spr_mach1 = spr_player_mach1;
		spr_mach = spr_player_mach;
		spr_secondjump1 = spr_player_secondjump1;
		spr_secondjump2 = spr_player_secondjump2;
		spr_machslidestart = spr_player_machslidestart;
		spr_machslide = spr_player_machsliding;
		spr_machslideend = spr_player_machslideend;
		spr_machslideboost = spr_player_machslideboost;
		spr_land2 = spr_player_land2;
		spr_punch = spr_player_punch;
		spr_backkick = spr_player_backkick;
		spr_shoulder = spr_player_shoulder;
		spr_uppunch = spr_player_uppunch;
		spr_stomp = spr_player_stomp;
		spr_stompprep = spr_player_stompprep;
		spr_crouchslide = spr_player_machslide;
		spr_crouch = spr_player_crouch;
		spr_bump = spr_player_bump;
		spr_victory = spr_player_entergate;
		spr_hurt = spr_gumbob_hurt;
		spr_climbwall = spr_player_climbwall;
		spr_grab = spr_player_grab;
		spr_mach2jump = spr_player_mach2jump;
		spr_Timesup = spr_player_timeup;
		spr_deathstart = spr_player_deathstart;
		spr_deathend = spr_player_deathend;
		spr_machpunch1 = spr_player_machpunch1;
		spr_machpunch2 = spr_player_machpunch2;
		spr_hurtjump = spr_gumbob_hurt;
		spr_entergate = spr_player_entergate;
		spr_gottreasure = spr_player_entergate;
		spr_bossintro = spr_player_bossintro;
		spr_hurtidle = spr_player_hurtidle;
		spr_hurtwalk = spr_player_hurtwalk;
		spr_suplexmash1 = spr_player_suplexmash1;
		spr_suplexmash2 = spr_player_suplexmash2;
		spr_suplexmash3 = spr_player_suplexmash3;
		spr_suplexmash4 = spr_player_suplexmash4;
		spr_tackle = spr_player_tackle;
		spr_airdash1 = spr_player_airdash1;
		spr_airdash2 = spr_player_airdash2;
		spr_keyget = spr_player_keyget;
		spr_idle1 = spr_gumbob_idle;
		spr_idle2 = spr_gumbob_idle;
		spr_idle3 = spr_gumbob_idle;
		spr_suplexdash = spr_player_suplexdash;
		spr_piledriver = spr_player_piledriver;
		spr_piledriverland = spr_player_piledriverland;
		spr_charge = spr_player_charge;
		spr_palette = spr_palg;
		spr_caneidle = spr_player_caneidle;
		spr_caneslam = spr_player_caneslam;
		spr_canewalk = spr_player_canewalk;
		spr_canesuplex = spr_player_canesuplex;
		spr_canehit = spr_player_canehit;
		spr_uppizzabox = spr_player_uppizzabox;
		spr_downpizzabox = spr_player_downpizzabox;
		spr_tumblestart = spr_player_tumblestart;
		spr_tumble = spr_player_tumble;
		spr_tumbleend = spr_player_tumbleend;
		spr_player_taunt = spr_gumbob_taunt;
		spr_machroll = spr_player_machroll;
		spr_dive = spr_player_dive;
		spr_cottonidle = spr_gumbob_cotton_idle;
	}
}
