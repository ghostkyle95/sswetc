if !obj_shell.isOpen with obj_player {
	if (state == states.normal || state == states.Sjumpprep || 
	state == states.mach1 || state == states.mach2 || state == states.mach3) && 
	!instance_exists(obj_fadeout) && state != states.door && state != states.victory && 
	state != states.comingoutdoor
		instance_create(x, y, obj_characterchanger);
};
