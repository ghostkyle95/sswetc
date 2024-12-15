switch global.levelname {
	case "entryway":
		tvbgsprite = (global.panic ? spr_tvbg_wafer_panic : spr_tvbg_wafer); break;
	case "steamy":
		tvbgsprite = (global.panic ? spr_tvbg_steamy_panic : spr_tvbg_steamy); break;
	case "molasses":
		tvbgsprite = (global.panic ? spr_tvbg_mlass_panic : spr_tvbg_mlass); break;
	case "mines":
		tvbgsprite = (global.panic ? spr_tvbg_mines_panic : spr_tvbg_mines); break;
	default: tvbgsprite = spr_tvbg_hub; break;
};
var _letters = string_letters(room_get_name(room));
if string_ends_with(_letters, "secret") tvbgsprite = spr_tvbg_secret;
