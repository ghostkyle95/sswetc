function scr_hatScript()
{
	ini_open("saveData.ini");
	var entryway = ini_read_string("Ranks", "entryway", "none");
	var steamy = ini_read_string("Ranks", "steamy", "none");
	var molasses = ini_read_string("Ranks", "molasses", "none");
	var mines = ini_read_string("Ranks", "mines", "none");
	var noisetv = ini_read_string("Ranks", "noisetv", "none");
	ini_close();
	ini_open("optionData.ini");
	if (!ini_read_real("HatsUnlock", "Entryway", false) && rank_checker(entryway) >= 4)
		ini_write_real("HatsUnlock", "Entryway", true);
	if (!ini_read_real("HatsUnlock", "Cottontown", false) && rank_checker(steamy) >= 4)
		ini_write_real("HatsUnlock", "Cottontown", true);
	if (!ini_read_real("HatsUnlock", "Molasses", false) && rank_checker(molasses) >= 4)
		ini_write_real("HatsUnlock", "Molasses", true);
	if (!ini_read_real("HatsUnlock", "Mines", false) && rank_checker(mines) >= 4)
		ini_write_real("HatsUnlock", "Mines", true);
	if (!ini_read_real("HatsUnlock", "World1", false) && (entryway != "none" && steamy != "none" && molasses != "none" && mines != "none"))
		ini_write_real("HatsUnlock", "World1", true);
	ini_close();
}
