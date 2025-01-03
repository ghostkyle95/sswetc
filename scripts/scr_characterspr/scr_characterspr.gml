enum CHARACTERS { PIZZELLE, PIZZANO, GUMBOB, NOISE, SWAB, NIKOCADO};
function scr_characterspr()
{
	// default to pizzelle
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
	spr_hurt = spr_player_stun;
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
	spr_gottreasure = spr_player_treasureget;
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
	spr_idle1 = spr_player_idle1;
	spr_idle2 = spr_player_idle2;
	spr_idle3 = spr_player_idle3;
	spr_idle4 = spr_player_idle4;
	spr_idle5 = spr_player_idle5;
	spr_idle6 = spr_player_idle6;
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
	spr_bodyslamstart = spr_player_poundprepare;
	spr_bodyslamland = spr_player_poundend;
	spr_bodyslamfall = spr_player_pound;
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
	spr_3hpidle = spr_player_angryidle;
	spr_3hpwalk = spr_player_angrywalk;
	spr_facehurtup = spr_player_poundcancelafter;
	spr_facehurt = spr_player_poundcancelafterloop;
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
	spr_kungfu1 = spr_pizzano_kungfu1;
	spr_kungfu2 = spr_pizzano_kungfu2;
	spr_kungfu3 = spr_pizzano_kungfu3;
	spr_faucetpull = spr_player_faucetpull;
	spr_superjumpprepside = spr_pizzano_sjumpprepside;
	spr_superjumpside = spr_pizzano_sjumpside;
	spr_rocketfistground = spr_pizzano_mach3;
	
	spr_bossintro = spr_player_bossintro;
	spr_parry1 = spr_player_parry1;
	spr_parry2 = spr_player_parry2;
	spr_parry3 = spr_player_parry3;
	
	spr_rampjump = spr_player_rampjump;
	spr_wallsplat = spr_player_wallsplat;
	spr_grind = spr_player_grind;
	spr_longjumpstart = spr_player_longjumpstart;
	spr_longjumpend = spr_player_longjumpend;
	spr_suplexbump = spr_player_grabbump;
	
	spr_shoulderbash = spr_player_shoulderbash;
	spr_machslideboostfall = spr_player_machslideboostfall;
	spr_fastroll = spr_player_machroll3;
	
	spr_Sjumpcancelprep = spr_player_Sjumpcancelprep;
	spr_Sjumpcancel = spr_player_Sjumpcancel;
	
	spr_machslideboost3fall = spr_playerN_mach3boostfall;
	
	spr_jetpackjump = spr_playerN_noisebombspinjump;
	spr_jetpackturn = spr_playerN_jetpackturn;
	spr_airhitwall = spr_pizzano_airhitwall;
	
	spr_groundedjetpackturn = spr_playerN_jetpackgroundedturn;
	
	spr_bomb_intro = spr_bombpep_intro;
	spr_bomb_run = spr_bombpep_run;
	spr_bomb_runabouttoexplode = spr_bombpep_runabouttoexplode;
	spr_bomb_end = spr_bombpep_end;
	
	spr_walljumpstart = spr_player_wallkickcancelstart;
	spr_walljump = spr_player_wallkickcancel;
	
	spr_divebombstart = spr_player_bodyslamstartOLD;
	spr_divebombfall = spr_player_bodyslamfallOLD;
	spr_divebombland = spr_player_bodyslamlandOLD;
	
	spr_cotidle = spr_cotton_idle;
	spr_cotwalk = spr_cotton_walk;
	spr_cotjump = spr_cotton_jump;
	spr_cotfall = spr_cotton_fall;
	spr_cotdoublejump = spr_cotton_doublejump;
	spr_cotdoublefall = spr_cotton_doublefall;
	spr_cotattack = spr_cotton_attack;
	spr_cotdrill = spr_cotton_drill;
	spr_cotroll = spr_cotton_roll;
	spr_cothitwall = spr_cotton_slam;
	spr_cotland = spr_cotton_land;
	
	spr_bodyslamjump = spr_playerSW_bodyslamjump;
	spr_piledriverjump = spr_player_piledriverjump;
	
	spr_sidewayspin = spr_playerN_sidewayspin;
	spr_sidewayspinend = spr_playerN_sidewayspinend;
	spr_wallbounce = spr_playerN_wallbounce;
	spr_tornado = spr_playerN_divebomb;
	spr_tornadofall = spr_playerN_divebombfall;
	spr_tornadoland = spr_playerN_divebombland;
	spr_mach4start = spr_playerSW_mach4start;
	spr_crouchslipstart = spr_playerSW_crouchslipstart;
	spr_uppercutcancelstart = spr_playerSW_Sjumpcancelstart2;
	spr_mach3wallclimb = spr_player_climbwallmach3;
	
	spr_mach3hit = spr_player_machhit;
	
	spr_kungfu4 = spr_pizzano_kungfu4;
	spr_kungfu5 = spr_pizzano_kungfu5;
	spr_divebombfacehurtup = spr_player_facehurtup;
	spr_divebombfacehurt = spr_player_facehurt;
	
	spr_50comboidle = spr_player_50comboidle;
	spr_50combowalk = spr_player_50combowalk;
	
	spr_breakdance = spr_player_breakdance;
	spr_capebegin = spr_pizzano_capebegin;
	spr_capeup = spr_pizzano_capeup;
	spr_capeupstart = spr_pizzano_capeupstart;
	spr_capefall = spr_pizzano_capefall;
	spr_capefallstart = spr_pizzano_capefallstart;
	
	spr_cotstart = spr_player_cottontransfo;
	
	spr_suplexdashfallstart = spr_playerN_suplexgrabjumpstart;
	spr_suplexdashfall = spr_playerN_suplexgrabjump;
	
	spr_srank = spr_rankS;
	spr_arank = spr_rankA;
	spr_brank = spr_rankB;
	spr_crank = spr_rankC;
	spr_drank = spr_rankD;
	spr_prank = spr_rankP;
	
	global.entrancemus = mu_waffle;
	global.entrancesecretmus = mu_wafflesecret;
	global.panicmus = mu_escape;
	global.lapmusarray = [mu_lap2, mu_lap3, mu_lap4, mu_lap5];
	
	sfx_plrjump = sfx_jump;
	sfx_plrmach1 = sfx_mach1;
	sfx_plrmach2 = sfx_mach2;
	sfx_plrmach3 = sfx_mach3;
	sfx_plrmach4 = sfx_mach4;
	sfx_plrmachturn = sfx_machturn;
	sfx_firebutt = sfx_pizzellefire;
	sfx_parry = sfx_parryenemy;
	sfx_plrsjumpstart = sfx_sjumpcharge;
	sfx_plrsjumphold = sfx_sjumpchargeloop;
	sfx_plrsjump = sfx_sjump;
	sfx_plrgrabdash = sfx_grabdash;
	sfx_machbreak = sfx_machslide;
	
	// specific characters
	if (character == CHARACTERS.PIZZANO)
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
		spr_crouchfall = spr_pizzano_crouchfall;
		spr_couchstart = spr_player_crouchstart;
		spr_bump = spr_pizzano_bump;
		spr_land = spr_player_land;
		spr_land2 = spr_player_land2;
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
		spr_secondjump1 = spr_pizzano_secondjump1;
		spr_secondjump2 = spr_pizzano_secondjump2;
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
		spr_crouch = spr_pizzano_crouch;
		spr_victory = spr_player_entergate;
		spr_climbwall = spr_pizzano_wallclimb;
		spr_grab = spr_player_grab;
		spr_mach2jump = spr_pizzano_twirl;
		spr_Timesup = spr_pizzano_timesup;
		spr_deathstart = spr_player_deathstart;
		spr_deathend = spr_pizzano_deathend;
		spr_machpunch1 = spr_player_machpunch1;
		spr_machpunch2 = spr_player_machpunch2;
		spr_hurtjump = spr_pizzano_hurt;
		spr_entergate = spr_player_entergate;
		spr_gottreasure = spr_pizzano_treasuregot;
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
		spr_idle4 = spr_player_idle;
		spr_idle5 = spr_player_idle;
		spr_idle6 = spr_player_idle;
		spr_suplexdash = spr_player_suplexdash;
		spr_piledriver = spr_player_piledriver;
		spr_piledriverland = spr_player_piledriverland;
		spr_charge = spr_player_charge;
		spr_palette = spr_palp;
		spr_caneidle = spr_player_caneidle;
		spr_canewalk = spr_player_canewalk;
		spr_canesuplex = spr_player_canesuplex;
		spr_canehit = spr_player_canehit;
		spr_uppizzabox = spr_player_uppizzabox;
		spr_downpizzabox = spr_pizzano_downpizzabox;
		spr_tumblestart = spr_player_tumblestart;
		spr_tumble = spr_player_tumble;
		spr_tumbleend = spr_player_tumbleend;
		spr_machroll = spr_pizzano_machroll;
		spr_escapeidle = spr_pizzano_panic;
		spr_timesupidle = spr_player_timesupidle;
		
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
		spr_supertaunt1 = spr_pizzano_supertaunt1;
		spr_supertaunt2 = spr_pizzano_supertaunt1;
		spr_supertaunt3 = spr_pizzano_supertaunt1;
		spr_ceilingcrash = spr_player_ceilingcrash;
		spr_rollgetup = spr_pizzano_rollgetup;
		spr_bodyslamstart = spr_player_poundprepare;
		spr_bodyslamland = spr_player_poundend;
		spr_bodyslamfall = spr_pizzano_bodyslam;
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
		spr_mach3jump = spr_pizzano_mach3jump;
		spr_plrdashpad = spr_pizzano_dashpad;
		spr_crazyrun = spr_pizzano_crazyrun;
		spr_machslideboost3 = spr_pizzano_mach3turn;
		spr_3hpidle = spr_player_angryidle;
		spr_3hpwalk = spr_player_angrywalk;
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
		spr_outofcontrolfall = spr_pizzano_outofcontrolfall;
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
		spr_kungfu1 = spr_pizzano_kungfu1;
		spr_kungfu2 = spr_pizzano_kungfu2;
		spr_kungfu3 = spr_pizzano_kungfu3;
		spr_faucetpull = spr_player_faucetpull;
		spr_superjumpprepside = spr_pizzano_sjumpprepside;
		spr_superjumpside = spr_pizzano_sjumpside;
		spr_rocketfistground = spr_pizzano_mach3;
		
		spr_bossintro = spr_player_bossintro;
		spr_parry1 = spr_pizzano_parry1;
		spr_parry2 = spr_pizzano_parry1;
		spr_parry3 = spr_pizzano_parry1;
		
		spr_rampjump = spr_player_rampjump;
		spr_wallsplat = spr_pizzano_wallsplat;
		spr_grind = spr_player_grind;
		spr_longjumpstart = spr_playerN_longjump;
		spr_longjumpend = spr_playerN_longjumpend;
		spr_suplexbump = spr_player_grabbump;
		
		spr_shoulderbash = spr_player_shoulderbash;
		spr_machslideboostfall = spr_player_machslideboostfall;
		spr_fastroll = spr_pizzano_fastroll;
		
		spr_Sjumpcancelprep = spr_player_Sjumpcancelprep;
		spr_Sjumpcancel = spr_player_Sjumpcancel;
		
		spr_machslideboost3fall = spr_playerN_mach3boostfall;
		
		spr_jetpackjump = spr_playerN_noisebombspinjump;
		spr_jetpackturn = spr_playerN_jetpackturn;
		spr_airhitwall = spr_pizzano_airhitwall;
		
		spr_groundedjetpackturn = spr_playerN_jetpackgroundedturn;
		
		spr_walljumpstart = spr_pizzano_secondjump1;
		spr_walljump = spr_pizzano_secondjump2;
		
		spr_bomb_intro = spr_bombpep_intro;
		spr_bomb_run = spr_bombpep_run;
		spr_bomb_runabouttoexplode = spr_bombpep_runabouttoexplode;
		spr_bomb_end = spr_bombpep_end;
		
		spr_divebombstart = spr_player_bodyslamstartOLD;
		spr_divebombfall = spr_player_bodyslamfallOLD;
		spr_divebombland = spr_player_bodyslamlandOLD;
		
		spr_bodyslamjump = spr_playerSW_bodyslamjump;
		spr_piledriverjump = spr_pizzano_jumpOLD;
		
		spr_sidewayspin = spr_playerN_sidewayspin;
		spr_sidewayspinend = spr_playerN_sidewayspinend;
		spr_wallbounce = spr_playerN_wallbounce;
		spr_tornado = spr_playerN_divebomb;
		spr_tornadofall = spr_playerN_divebombfall;
		spr_tornadoland = spr_playerN_divebombland;
		spr_mach4start = spr_playerSW_mach4start;
		spr_crouchslipstart = spr_playerSW_crouchslipstart;
		spr_uppercutcancelstart = spr_playerSW_Sjumpcancelstart2;
		spr_mach3wallclimb = spr_playerSW_mach3wall;
		
		spr_mach3hit = spr_player_machhit;
		
		spr_kungfu4 = spr_pizzano_kungfu4;
		spr_kungfu5 = spr_pizzano_kungfu5;
		spr_divebombfacehurtup = spr_player_facehurtup;
		spr_divebombfacehurt = spr_player_facehurt;
		spr_dive = spr_pizzano_dive;
		
		spr_50comboidle = spr_player_50comboidle;
		spr_50combowalk = spr_player_50combowalk;
		
		spr_breakdance = spr_player_breakdancebeach;
		spr_capebegin = spr_pizzano_capebegin;
		spr_capeup = spr_pizzano_capeup;
		spr_capeupstart = spr_pizzano_capeupstart;
		spr_capefall = spr_pizzano_capefall;
		spr_capefallstart = spr_pizzano_capefallstart;
		
		spr_cotstart = spr_player_cottontransfo;
		
		spr_suplexdashfallstart = spr_playerN_suplexgrabjumpstart;
		spr_suplexdashfall = spr_playerN_suplexgrabjump;
		
		spr_srank = spr_rankS;
		spr_arank = spr_rankA;
		spr_brank = spr_rankB;
		spr_crank = spr_rankC;
		spr_drank = spr_rankD;
		spr_prank = spr_rankP;
		
		global.entrancemus = mu_pizzanoorchestralplay;
		global.entrancesecretmus = mu_pizzanosecret;
		global.panicmus = mu_pizzanoescape;
		global.lapmusarray = [mu_pizzanolap2, mu_lap3, mu_lap4, mu_lap5];
		
		sfx_plrjump = sfx_jump;
		sfx_plrmach1 = sfx_mach1;
		sfx_plrmach2 = sfx_mach2;
		sfx_plrmach3 = sfx_mach3;
		sfx_plrmach4 = sfx_mach4;
		sfx_plrmachturn = sfx_machturn;
		sfx_firebutt = sound_pizzanohurt;
		sfx_parry = sfx_parryenemy;
		sfx_plrsjumpstart = sfx_sjumpcharge;
		sfx_plrsjumphold = sfx_sjumpchargeloop;
		sfx_plrsjump = sfx_sjump;
		sfx_plrgrabdash = sfx_grabdash;
		sfx_machbreak = sfx_machslide;
	}
	if (character == CHARACTERS.NOISE)
	{
		spr_idle = spr_playerN_idle;
		spr_move = spr_playerN_move;
		spr_crawl = spr_playerN_crawl;
		spr_hurt = spr_playerN_hurt;
		spr_jump = spr_playerN_jump;
		spr_jump2 = spr_playerN_jump;
		spr_fall = spr_playerN_fall;
		spr_fall2 = spr_playerN_fall;
		spr_crouch = spr_playerN_crouch;
		spr_crouchjump = spr_playerN_crouchjump;
		spr_crouchfall = spr_playerN_crouchfall;
		spr_couchstart = spr_playerN_crouchstart;
		spr_bump = spr_playerN_bump;
		spr_land = spr_playerN_land;
		spr_land2 = spr_playerN_land2;
		spr_lookdoor = spr_playerN_lookdoor;
		spr_walkfront = spr_playerN_walkfront;
		spr_victory = spr_playerN_entergate;
		spr_Ladder = spr_playerN_ladder;
		spr_laddermove = spr_playerN_laddermove;
		spr_ladderdown = spr_playerN_ladderdown;
		spr_keyget = spr_playerN_keyget;
		spr_crouchslip = spr_playerN_crouchslip;
		spr_mach1 = spr_playerN_mach1;
		spr_mach = spr_playerN_mach;
		spr_secondjump1 = spr_playerN_secondjump1;
		spr_secondjump2 = spr_playerN_secondjump2;
		spr_machslidestart = spr_playerN_machslidestart;
		spr_machslide = spr_playerN_machslide;
		spr_machslideend = spr_playerN_machslideend;
		spr_machslideboost = spr_playerN_machslideboost;
		spr_land2 = spr_playerN_land2;
		spr_punch = spr_player_punch;
		spr_backkick = spr_player_backkick;
		spr_shoulder = spr_player_shoulder;
		spr_uppunch = spr_player_uppunch;
		spr_stomp = spr_playerN_stomp;
		spr_stompprep = spr_playerN_stompprep;
		spr_crouchslide = spr_playerN_crouchslip;
		spr_crouch = spr_playerN_crouch;
		spr_victory = spr_playerN_entergate;
		spr_hurt = spr_playerN_hurt;
		spr_climbwall = spr_playerN_climbwall;
		spr_grab = spr_playerN_haulingidle;
		spr_mach2jump = spr_playerN_mach2jump;
		spr_Timesup = spr_playerN_timesup;
		spr_deathstart = spr_player_deathstart;
		spr_deathend = spr_playerN_deathend;
		spr_machpunch1 = spr_playerN_machpunch1;
		spr_machpunch2 = spr_playerN_machpunch2;
		spr_hurtjump = spr_playerN_hurtjump;
		spr_entergate = spr_playerN_entergate;
		spr_gottreasure = spr_playerN_gottreasure;
		spr_bossintro = spr_playerN_bossintro;
		spr_hurtidle = spr_player_hurtidle;
		spr_hurtwalk = spr_player_hurtwalk;
		spr_suplexmash1 = spr_playerN_finishingblow1;
		spr_suplexmash2 = spr_playerN_finishingblow2;
		spr_suplexmash3 = spr_playerN_finishingblow3;
		spr_suplexmash4 = spr_playerN_finishingblow4;
		spr_tackle = spr_playerN_tackle;
		spr_airdash1 = spr_playerN_airdash1;
		spr_airdash2 = spr_playerN_airdash2;
		spr_keyget = spr_playerN_keyget;
		spr_idle1 = spr_playerN_idleballoon;
		spr_idle2 = spr_playerN_idlegun;
		spr_idle3 = spr_playerN_idledance;
		spr_idle4 = spr_playerN_idleface;
		spr_idle5 = spr_playerN_idlemask;
		spr_idle6 = spr_playerN_idlesmoke;
		spr_suplexdash = spr_playerN_suplexgrab;
		spr_piledriver = spr_playerN_piledriver;
		spr_piledriverland = spr_playerN_piledriverland;
		spr_charge = spr_player_charge;
		spr_palette = spr_paln;
		spr_caneidle = spr_player_caneidle;
		spr_caneslam = spr_player_caneslam;
		spr_canewalk = spr_player_canewalk;
		spr_canesuplex = spr_player_canesuplex;
		spr_canehit = spr_player_canehit;
		spr_uppizzabox = spr_playerN_uppizzabox;
		spr_downpizzabox = spr_playerN_downpizzabox;
		spr_tumblestart = spr_playerN_tumblestart;
		spr_tumble = spr_playerN_tumble;
		spr_tumbleend = spr_playerN_tumbleend;
		spr_machroll = spr_playerN_machroll;
		spr_dive = spr_playerN_dive;
		spr_escapeidle = spr_playerN_panicidle;
		spr_timesupidle = spr_playerN_hurtidle;
		
		spr_taunt = spr_playerN_taunt;
		spr_winding = spr_playerN_winding;
		spr_piledriverstart = spr_playerN_piledriver;
		spr_superjumpprep = spr_playerN_Sjumpstart;
		spr_superjumpleft = spr_playerN_Sjumpmoveleft;
		spr_superjumpright = spr_playerN_Sjumpmoveright;
		spr_superjump = spr_playerN_Sjump;
		spr_superjumpland = spr_playerN_Sjumpland;
		spr_superjumppreplight = spr_playerN_Sjumpprep;
		spr_mach3hitwall = spr_playerN_mach3hitwall;
		spr_mach4 = spr_playerN_mach3;
		spr_machtumble = spr_playerN_spin;
		spr_machfreefall = spr_playerN_fall;
		spr_crouchslide = spr_playerN_crouchslip;
		spr_supertaunt1 = spr_playerN_supertaunt1;
		spr_supertaunt2 = spr_playerN_supertaunt2;
		spr_supertaunt3 = spr_playerN_supertaunt3;
		spr_ceilingcrash = spr_playerN_Sjumpland;
		spr_rollgetup = spr_playerN_rollgetup;
		spr_bodyslamstart = spr_playerN_bodyslamstart
		spr_bodyslamland = spr_playerN_bodyslamland;
		spr_bodyslamfall = spr_playerN_bodyslam;
		spr_crusherstart = spr_playerN_noisecrusherstart;
		spr_crusherland = spr_playerN_noisecrusherland;
		spr_crusherfall = spr_playerN_noisecrusherfall;
		spr_suplexdashCancel = spr_playerN_suplexcancel;
		spr_facestomp = spr_playerN_machfreefall1;
		spr_freefall = spr_playerN_machfreefall1;
		spr_freefall2 = spr_playerN_machfreefall2;
		spr_candyidle = spr_player_candyidle;
		spr_candybegin = spr_player_candybegin;
		spr_candyup = spr_player_candyup;
		spr_candytransitionup = spr_player_candytransitionup;
		spr_uppercutbegin = spr_playerN_breakdanceuppercut;
		spr_uppercutend = spr_playerN_breakdanceuppercutend;
		spr_freefallland = spr_playerN_bodyslamland;
		spr_mach3jump = spr_playerN_mach3jump;
		spr_plrdashpad = spr_playerN_dashpad;
		spr_crazyrun = spr_playerN_crazyrun;
		spr_machslideboost3 = spr_playerN_mach3boost;
		spr_3hpidle = spr_playerN_angryidle;
		spr_3hpwalk = spr_playerN_angrymove;
		spr_facehurtup = spr_playerN_facehurtup;
		spr_facehurt = spr_playerN_facehurt;
		spr_slipnslide = spr_playerN_rockethitwall;
		spr_slipnslideend = spr_playerN_slipbanan2;
		spr_slipnslidestart = spr_playerN_slipbanan1;
		spr_minecartjump = spr_player_minecartjump;
		spr_plrminecart = spr_player_minecart;
		spr_minecartfall = spr_player_minecartfall;
		spr_minecartfast = spr_player_minecartfast;
		spr_minecartland = spr_player_minecartland;
		spr_minecartfastland = spr_player_minecartfastland;
		spr_hurtroll = spr_player_hurtroll;
		spr_outofcontrolfall = spr_playerN_rockethitwall;
		spr_enterkey = spr_playerN_victory;
		spr_swingding = spr_playerN_swingding;
		spr_swingdingend = spr_playerN_swingdingend;
		spr_haulingstart = spr_playerN_haulingstart;
		spr_haulingidle = spr_playerN_haulingidle;
		spr_haulingwalk = spr_playerN_haulingmove;
		spr_haulingjump = spr_playerN_haulingjump;
		spr_haulingfall = spr_playerN_haulingfall;
		spr_haulingland = spr_playerN_haulingland;
		spr_uppercutfinishingblow = spr_playerN_uppercut;
		spr_blockbreak1 = spr_playerN_suplexmash1;
		spr_blockbreak2 = spr_playerN_suplexmash2;
		spr_blockbreak3 = spr_playerN_suplexmash3;
		spr_blockbreak4 = spr_playerN_suplexmash4;
		spr_blockbreak5 = spr_playerN_suplexmash1;
		spr_blockbreak6 = spr_playerN_suplexmash2;
		spr_blockbreak7 = spr_playerN_suplexmash3;
		spr_squished = spr_playerN_squished;
		spr_firebutt = spr_playerN_fireass;
		spr_firebuttend = spr_playerN_fireassground;
		spr_catched = spr_playerN_catched;
		spr_donutget = spr_player_donutget;
		spr_kungfu1 = spr_pizzano_kungfu1;
		spr_kungfu2 = spr_pizzano_kungfu2;
		spr_kungfu3 = spr_pizzano_kungfu3;
		spr_faucetpull = spr_player_faucetpull;
		spr_superjumpprepside = spr_playerN_jetpackstart;
		spr_superjumpside = spr_playerN_jetpackboost;
		spr_rocketfistground = spr_playerN_jetpackslide;
		
		spr_bossintro = spr_playerN_bossintro;
		spr_parry1 = spr_playerN_parry1;
		spr_parry2 = spr_playerN_parry2;
		spr_parry3 = spr_playerN_parry3;
		
		spr_rampjump = spr_playerN_rampjump;
		spr_wallsplat = spr_playerN_wallsplat;
		spr_grind = spr_playerN_grind;
		spr_longjumpstart = spr_playerN_longjump;
		spr_longjumpend = spr_playerN_longjumpend;
		spr_suplexbump = spr_playerN_suplexbump;
		
		spr_shoulderbash = spr_playerN_tackle;
		spr_machslideboostfall = spr_playerN_machslideboostfall;
		spr_fastroll = spr_playerN_fastroll;
		
		spr_Sjumpcancelprep = spr_player_Sjumpcancelprep;
		spr_Sjumpcancel = spr_player_Sjumpcancel;
		
		spr_machslideboost3fall = spr_playerN_mach3boostfall;
		
		spr_jetpackjump = spr_playerN_noisebombspinjump;
		spr_jetpackturn = spr_playerN_jetpackturn;
		spr_airhitwall = spr_pizzano_airhitwall;
		
		spr_groundedjetpackturn = spr_playerN_jetpackgroundedturn;
		
		spr_bomb_intro = spr_playerN_bombstart;
		spr_bomb_run = spr_playerN_bomb;
		spr_bomb_runabouttoexplode = spr_playerN_bombabouttoexplode;
		spr_bomb_end = spr_playerN_bombend;
		
		spr_walljumpstart = spr_playerN_walljumpstart;
		spr_walljump = spr_playerN_walljumpend;
		
		spr_divebombstart = spr_player_bodyslamstartOLD;
		spr_divebombfall = spr_player_bodyslamfallOLD;
		spr_divebombland = spr_player_bodyslamlandOLD;
		
		spr_cotidle = spr_cotton_idle;
		spr_cotwalk = spr_cotton_walk;
		spr_cotjump = spr_cotton_jump;
		spr_cotfall = spr_cotton_fall;
		spr_cotdoublejump = spr_cotton_doublejump;
		spr_cotdoublefall = spr_cotton_doublefall;
		spr_cotattack = spr_cotton_attack;
		spr_cotdrill = spr_cotton_drill;
		spr_cotroll = spr_cotton_roll;
		spr_cothitwall = spr_cotton_slam;
		spr_cotland = spr_cotton_land;
		
		spr_bodyslamjump = spr_playerSW_bodyslamjump;
		spr_piledriverjump = spr_playerN_suplexland;
		
		spr_sidewayspin = spr_playerN_sidewayspin;
		spr_sidewayspinend = spr_playerN_sidewayspinend;
		spr_wallbounce = spr_playerN_wallbounce;
		spr_tornado = spr_playerN_divebomb;
		spr_tornadofall = spr_playerN_divebombfall;
		spr_tornadoland = spr_playerN_divebombland;
		spr_mach4start = spr_playerSW_mach4start;
		spr_crouchslipstart = spr_playerSW_crouchslipstart;
		spr_uppercutcancelstart = spr_playerSW_Sjumpcancelstart2;
		spr_mach3wallclimb = spr_playerSW_mach3wall;
		
		spr_mach3hit = spr_playerN_machpunch1;
		
		spr_kungfu4 = spr_pizzano_kungfu4;
		spr_kungfu5 = spr_pizzano_kungfu5;
		spr_dive = spr_playerN_dive;
		spr_divebombfacehurtup = spr_player_facehurtup;
		spr_divebombfacehurt = spr_player_facehurt;
		
		spr_50comboidle = spr_playerN_rageidle;
		spr_50combowalk = spr_playerN_ragemove;
		
		spr_breakdance = spr_playerN_breakdancing;
		spr_capebegin = spr_pizzano_capebegin;
		spr_capeup = spr_pizzano_capeup;
		spr_capeupstart = spr_pizzano_capeupstart;
		spr_capefall = spr_pizzano_capefall;
		spr_capefallstart = spr_pizzano_capefallstart;
		
		spr_cotstart = spr_player_cottontransfo;
		
		spr_suplexdashfallstart = spr_playerN_suplexgrabjumpstart;
		spr_suplexdashfall = spr_playerN_suplexgrabjump;
		
		spr_srank = spr_rankNS;
		spr_arank = spr_rankNA;
		spr_brank = spr_rankNB;
		spr_crank = spr_rankNC;
		spr_drank = spr_rankND;
		spr_prank = spr_rankNP;
		
		global.entrancemus = mu_noiseentrance;
		global.entrancesecretmus = mu_wafflesecret;
		global.panicmus = mu_noiseescape;
		global.lapmusarray = [mu_noiselap2, mu_noiselap3, mu_noiselap4, mu_noiselap5];
		
		sfx_plrjump = sfx_noisejump;
		sfx_plrmach1 = sfx_noisemach1;
		sfx_plrmach2 = sfx_noisemach2;
		sfx_plrmach3 = sfx_noisemach3;
		sfx_plrmach4 = sfx_noisemach4;
		sfx_plrmachturn = sfx_noisemachslide;
		sfx_firebutt = sfx_noisescream;
		sfx_parry = sfx_parryenemy;
		sfx_plrsjumpstart = sfx_noisesjumpstart;
		sfx_plrsjumphold = sfx_noisesjumploop;
		sfx_plrsjump = sfx_noisesjumprelease;
		sfx_plrgrabdash = sfx_grabdash;
		sfx_machbreak = sfx_noisemachstop;
		
		if doisemode {
			spr_palette = spr_pald;
			
			// vertical
			spr_uppercutbegin = spr_playerN_doublejump;
			spr_uppercutend = spr_playerN_doublejumpfall;
			spr_wallbounce = spr_playerN_noisebombspinjump;
			
			// divebomb
			spr_divebombstart = spr_playerN_bodyslamstart;
			spr_divebombfall = spr_playerN_bodyslam;
			spr_divebombland = spr_playerN_bodyslamland;
			spr_divebombfacehurtup = spr_playerN_facehurtup;
			spr_divebombfacehurt = spr_playerN_facehurt;
			
			sfx_firebutt = sfx_doisescream;
		};
	}
	if (character == CHARACTERS.SWAB)
	{
		spr_idle = spr_playerSW_idle;
		spr_move = spr_playerSW_move;
		spr_crawl = spr_playerSW_crouchmove;
		spr_hurt = spr_playerSW_hurt;
		spr_hurtjump = spr_playerSW_jumphurt;
		spr_jump = spr_playerSW_jump;
		spr_jump2 = spr_playerSW_jump;
		spr_fall = spr_playerSW_fall;
		spr_fall2 = spr_playerSW_fall;
		spr_crouch = spr_playerSW_crouchidle;
		spr_crouchjump = spr_playerSW_crouchjump;
		spr_crouchfall = spr_playerSW_crouchfall;
		spr_couchstart = spr_playerSW_crouchstart;
		spr_bump = spr_playerSW_bump;
		spr_land = spr_playerSW_land;
		spr_land2 = spr_playerSW_land2;
		spr_lookdoor = spr_playerSW_lookdoor;
		spr_walkfront = spr_playerSW_walkfront;
		spr_victory = spr_playerSW_entergate;
		spr_entergate = spr_playerSW_entergate;
		spr_Ladder = spr_playerSW_ladder;
		spr_laddermove = spr_playerSW_laddermove;
		spr_ladderdown = spr_playerSW_ladderdown;
		spr_keyget = spr_playerSW_keyget;
		spr_crouchslip = spr_playerSW_crouchslip;
		spr_mach1 = spr_playerSW_mach1;
		spr_mach = spr_playerSW_mach2;
		spr_secondjump1 = spr_playerSW_mach2jump;
		spr_secondjump2 = spr_playerSW_mach2fall;
		spr_machslidestart = spr_playerSW_machslidestart;
		spr_machslide = spr_playerSW_machslide;
		spr_machslideend = spr_playerSW_machslideend;
		spr_machslideboost = spr_playerSW_machslideboost;
		spr_land2 = spr_playerSW_land2;
		spr_stomp = spr_playerSW_stomp;
		spr_stompprep = spr_playerSW_stompprep;
		spr_crouchslide = spr_playerSW_crouchslip;
		spr_crouch = spr_playerSW_crouchidle;
		spr_climbwall = spr_playerSW_mach2wall;
		spr_grab = spr_playerSW_haulingidle;
		spr_mach2jump = spr_playerSW_mach2fall;
		spr_Timesup = spr_playerSW_timesup;
		spr_deathend = spr_playerSW_dead;
		spr_machpunch1 = spr_playerSW_mach2hit;
		spr_machpunch2 = spr_playerSW_mach2hit;
		spr_gottreasure = spr_playerSW_victory;
		spr_bossintro = spr_playerSW_bossintro;
		spr_suplexmash1 = spr_playerSW_finishingblow1;
		spr_suplexmash2 = spr_playerSW_finishingblow2;
		spr_suplexmash3 = spr_playerSW_finishingblow3;
		spr_suplexmash4 = spr_playerSW_finishingblow4;
		spr_tackle = spr_player_tackle;
		spr_airdash1 = spr_playerSW_mach1jump;
		spr_airdash2 = spr_playerSW_mach1fall;
		spr_keyget = spr_playerSW_keyget;
		spr_idle1 = spr_playerSW_handgesture1;
		spr_idle2 = spr_playerSW_handgesture2;
		spr_idle3 = spr_playerSW_handgesture3;
		spr_idle4 = spr_playerSW_handgesture4;
		spr_idle5 = spr_playerSW_idledance;
		spr_idle6 = spr_playerSW_idlefrown;
		spr_suplexdash = spr_playerSW_grab;
		spr_piledriver = spr_playerSW_piledriver;
		spr_piledriverland = spr_playerSW_piledriverland;
		spr_palette = spr_playerSW_palette;
		spr_caneidle = spr_player_caneidle;
		spr_caneslam = spr_player_caneslam;
		spr_canewalk = spr_player_canewalk;
		spr_canesuplex = spr_player_canesuplex;
		spr_canehit = spr_player_canehit;
		spr_uppizzabox = spr_playerSW_uppizzabox;
		spr_downpizzabox = spr_playerSW_downpizzabox;
		spr_tumblestart = spr_player_tumblestart;
		spr_tumble = spr_player_tumble;
		spr_tumbleend = spr_player_tumbleend;
		spr_machroll = spr_playerSW_machroll;
		spr_dive = spr_playerSW_dive;
		spr_escapeidle = spr_playerSW_panic;
		spr_timesupidle = spr_playerSW_hurtidle;
		
		spr_taunt = spr_playerSW_taunt;
		spr_winding = spr_playerSW_winding;
		spr_piledriverstart = spr_playerSW_piledriver;
		spr_superjumpprep = spr_playerSW_superjumpprep;
		spr_superjumpleft = spr_playerSW_superjumpmove;
		spr_superjumpright = spr_playerSW_superjumpmove; 
		spr_superjump = spr_playerSW_superjump;
		spr_superjumpland = spr_playerSW_superjumpland;
		spr_superjumppreplight = spr_playerSW_superjumppreplight;
		spr_mach3hitwall = spr_playerSW_mach3hitwall;
		spr_mach4 = spr_playerSW_mach3;
		spr_machtumble = spr_player_machtumble;
		spr_machfreefall = spr_playerSW_machfreefall;
		spr_crouchslide = spr_playerSW_crouchslip;
		spr_supertaunt1 = spr_playerSW_supertaunt1;
		spr_supertaunt2 = spr_playerSW_supertaunt2;
		spr_supertaunt3 = spr_playerSW_supertaunt3;
		spr_ceilingcrash = spr_playerSW_superjumpland;
		spr_rollgetup = spr_playerSW_rollgetup;
		spr_bodyslamstart = spr_playerSW_bodyslamstart;
		spr_bodyslamland = spr_playerSW_bodyslamland;
		spr_bodyslamfall = spr_playerSW_bodyslamfall;
		spr_suplexdashCancel = spr_playerSW_suplexcancel;
		spr_facestomp = spr_playerSW_facestomp;
		spr_freefall = spr_playerSW_facestomp;
		spr_freefall2 = spr_playerSW_facestomp;
		spr_candyidle = spr_player_candyidle;
		spr_candybegin = spr_player_candybegin;
		spr_candyup = spr_player_candyup;
		spr_candytransitionup = spr_player_candytransitionup;
		spr_uppercutbegin = spr_playerSW_uppercut;
		spr_uppercutend = spr_playerSW_uppercutend;
		spr_freefallland = spr_playerSW_bodyslamland;
		spr_mach3jump = spr_playerSW_mach3jump;
		spr_plrdashpad = spr_playerSW_dashpad;
		spr_crazyrun = spr_playerSW_mach4;
		spr_machslideboost3 = spr_playerSW_machslideboost3;
		spr_3hpidle = spr_playerSW_3hpidle;
		spr_3hpwalk = spr_playerSW_move;
		spr_facehurtup = spr_playerSW_facehurt;
		spr_facehurt = spr_playerSW_facehurt;
		spr_slipnslide = spr_playerSW_slipbananfall;
		spr_slipnslideend = spr_playerSW_slipbanan2;
		spr_slipnslidestart = spr_playerSW_slipbanan1;
		spr_minecartjump = spr_player_minecartjump;
		spr_plrminecart = spr_player_minecart;
		spr_minecartfall = spr_player_minecartfall;
		spr_minecartfast = spr_player_minecartfast;
		spr_minecartland = spr_player_minecartland;
		spr_minecartfastland = spr_player_minecartfastland;
		spr_hurtroll = spr_playerSW_jumphurt;
		spr_outofcontrolfall = spr_playerSW_rockethitwall;
		spr_enterkey = spr_playerSW_victory;
		spr_swingding = spr_playerSW_swingding;
		spr_swingdingend = spr_playerSW_swingdingend;
		spr_haulingstart = spr_playerSW_haulingstart;
		spr_haulingidle = spr_playerSW_haulingidle;
		spr_haulingwalk = spr_playerSW_haulingwalk;
		spr_haulingjump = spr_playerSW_haulingjump;
		spr_haulingfall = spr_playerSW_haulingfall;
		spr_haulingland = spr_playerSW_haulingland;
		spr_uppercutfinishingblow = spr_playerSW_uppercutfinishingblow;
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
		spr_kungfu1 = spr_pizzano_kungfu1;
		spr_kungfu2 = spr_pizzano_kungfu2;
		spr_kungfu3 = spr_pizzano_kungfu3;
		spr_faucetpull = spr_player_faucetpull;
		spr_superjumpprepside = spr_pizzano_sjumpprepside;
		spr_superjumpside = spr_pizzano_sjumpside;
		spr_rocketfistground = spr_pizzano_mach3;
		
		spr_bossintro = spr_playerSW_bossintro;
		spr_parry1 = spr_playerSW_parry1;
		spr_parry2 = spr_playerSW_parry2;
		spr_parry3 = spr_playerSW_parry3;
		
		spr_rampjump = spr_player_rampjump;
		spr_wallsplat = spr_playerSW_wallsplat;
		spr_grind = spr_playerSW_grind;
		spr_longjumpstart = spr_playerSW_longjump;
		spr_longjumpend = spr_playerSW_longjumpend;
		spr_suplexbump = spr_playerSW_suplexbump;
		
		spr_shoulderbash = spr_player_shoulderbash;
		spr_machslideboostfall = spr_playerSW_machslideboostfall;
		spr_fastroll = spr_playerSW_machroll;
		
		spr_Sjumpcancelprep = spr_playerSW_Sjumpcancelstart;
		spr_Sjumpcancel = spr_playerSW_Sjumpcancel;
		
		spr_machslideboost3fall = spr_playerSW_machslideboost3fall;
		
		spr_jetpackjump = spr_playerN_noisebombspinjump;
		spr_jetpackturn = spr_playerN_jetpackturn;
		spr_airhitwall = spr_pizzano_airhitwall;
		
		spr_groundedjetpackturn = spr_playerN_jetpackgroundedturn;
		
		spr_bomb_intro = spr_bombpep_intro;
		spr_bomb_run = spr_bombpep_run;
		spr_bomb_runabouttoexplode = spr_bombpep_runabouttoexplode;
		spr_bomb_end = spr_bombpep_end;
		
		spr_walljumpstart = spr_playerSW_walljumpstart;
		spr_walljump = spr_playerSW_walljumpend;
		
		spr_divebombstart = spr_playerSW_divebombstart;
		spr_divebombfall = spr_playerSW_divebomb;
		spr_divebombland = spr_playerSW_divebombland;
		
		spr_cotidle = spr_playerSW_cotidle;
		spr_cotwalk = spr_cotton_walk;
		spr_cotjump = spr_cotton_jump;
		spr_cotfall = spr_cotton_fall;
		spr_cotdoublejump = spr_cotton_doublejump;
		spr_cotdoublefall = spr_cotton_doublefall;
		spr_cotattack = spr_cotton_attack;
		spr_cotdrill = spr_cotton_drill;
		spr_cotroll = spr_cotton_roll;
		spr_cothitwall = spr_cotton_slam;
		spr_cotland = spr_cotton_land;
		
		spr_bodyslamjump = spr_playerSW_bodyslamjump;
		spr_piledriverjump = spr_playerSW_jump;
		
		spr_sidewayspin = spr_playerN_sidewayspin;
		spr_sidewayspinend = spr_playerN_sidewayspinend;
		spr_wallbounce = spr_playerN_wallbounce;
		spr_tornado = spr_playerN_divebomb;
		spr_tornadofall = spr_playerN_divebombfall;
		spr_tornadoland = spr_playerN_divebombland;
		spr_mach4start = spr_playerSW_mach4start;
		spr_crouchslipstart = spr_playerSW_crouchslipstart;
		spr_uppercutcancelstart = spr_playerSW_Sjumpcancelstart2;
		spr_mach3wallclimb = spr_playerSW_mach3wall;
		
		spr_mach3hit = spr_playerSW_mach3hit;
		
		spr_50comboidle = spr_playerSW_rageidle;
		spr_50combowalk = spr_playerSW_ragemove;
		
		spr_breakdance = spr_playerSW_breakdance;
		spr_capebegin = spr_pizzano_capebegin;
		spr_capeup = spr_pizzano_capeup;
		spr_capeupstart = spr_pizzano_capeupstart;
		spr_capefall = spr_pizzano_capefall;
		spr_capefallstart = spr_pizzano_capefallstart;
		
		spr_kungfu4 = spr_pizzano_kungfu4;
		spr_kungfu5 = spr_pizzano_kungfu5;
		spr_divebombfacehurtup = spr_player_facehurtup;
		spr_divebombfacehurt = spr_player_facehurt;
		
		spr_cotstart = spr_player_cottontransfo;
		
		spr_suplexdashfallstart = spr_playerSW_suplexgrabjumpstart;
		spr_suplexdashfall = spr_playerSW_suplexgrabjump;
		
		spr_srank = spr_rankSWS;
		spr_arank = spr_rankSWA;
		spr_brank = spr_rankSWB;
		spr_crank = spr_rankSWC;
		spr_drank = spr_rankSWD;
		spr_prank = spr_rankSWP;
		
		global.entrancemus = mu_swabentrance;
		global.entrancesecretmus = mu_wafflesecret;
		global.panicmus = mu_swabescape;
		global.lapmusarray = [mu_lap2, mu_lap3, mu_lap4, mu_lap5];
		
		sfx_plrjump = sfx_jump;
		sfx_plrmach1 = sfx_mach1;
		sfx_plrmach2 = sfx_mach2;
		sfx_plrmach3 = sfx_mach3;
		sfx_plrmach4 = sfx_mach4;
		sfx_plrmachturn = sfx_machturn;
		sfx_firebutt = sfx_pizzellefire;
		sfx_parry = sfx_parryenemy;
		sfx_plrsjumpstart = sfx_sjumpcharge;
		sfx_plrsjumphold = sfx_sjumpchargeloop;
		sfx_plrsjump = sfx_sjump;
		sfx_plrgrabdash = sfx_grabdash;
		sfx_machbreak = sfx_machslide;
	}
	if (character == CHARACTERS.GUMBOB)
	{
		spr_idle = spr_gumbob_idle;
		spr_move = spr_gumbob_walk;
		spr_hurt = spr_gumbob_hurt;
		spr_jump = spr_gumbob_jump;
		spr_jump2 = spr_gumbob_jump;
		spr_fall = spr_gumbob_fall;
		spr_fall2 = spr_gumbob_fall;
		spr_hurt = spr_gumbob_hurt;
		spr_hurtjump = spr_gumbob_hurt;
		spr_idle1 = spr_gumbob_idle;
		spr_idle2 = spr_gumbob_idle;
		spr_idle3 = spr_gumbob_idle;
		spr_palette = spr_palg;
		spr_taunt = spr_gumbob_taunt;
		spr_cotidle = spr_gumbob_cotton_idle;
		spr_mach4 = spr_gumbob_mach3;
		spr_machslideboost3 = spr_gumbob_mach3turn;
		spr_crouch = spr_gumbob_crouch;
		spr_land = spr_gumbob_land;
		
		global.entrancemus = mu_waffle;
		global.entrancesecretmus = mu_wafflesecret;
		global.panicmus = mu_escape;
		global.lapmusarray = [mu_lap2, mu_lap3, mu_lap4, mu_lap5];
		
		sfx_plrjump = sfx_jump;
		sfx_plrmach1 = sfx_mach1;
		sfx_plrmach2 = sfx_mach2;
		sfx_plrmach3 = sfx_mach3;
		sfx_plrmach4 = sfx_mach4;
		sfx_plrmachturn = sfx_machturn;
		sfx_firebutt = sfx_pizzellefire;
		sfx_parry = sfx_parryenemy;
		sfx_plrsjumpstart = sfx_sjumpcharge;
		sfx_plrsjumphold = sfx_sjumpchargeloop;
		sfx_plrsjump = sfx_sjump;
		sfx_plrgrabdash = sfx_grabdash;
		sfx_machbreak = sfx_machslide;
	}
	if (character == CHARACTERS.NIKOCADO)
	{
		spr_idle = spr_playerNIK_idle;
		spr_move = spr_playerNIK_move;
		spr_jump = spr_playerNIK_jump;
		spr_fall = spr_playerNIK_fall;
		spr_taunt = spr_playerNIK_taunt;
		spr_breakdance = spr_playerNIK_breakdancing;
		spr_mach1 = spr_playerNIK_mach1;
		spr_mach = spr_playerNIK_mach2;
		spr_mach4 = spr_playerNIK_mach3;
		spr_mach3jump = spr_playerNIK_mach3jump;
		spr_machslideboost3 = spr_playerNIK_mach3turn;
		spr_dive = spr_playerNIK_dive;
		
		spr_srank = spr_rankNIKS;
		spr_arank = spr_rankNIKA;
		spr_brank = spr_rankNIKB;
		spr_crank = spr_rankNIKC;
		spr_drank = spr_rankNIKD;
		spr_prank = spr_rankNIKP;
	}
}
