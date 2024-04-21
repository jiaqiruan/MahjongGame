// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DetermineCard(inst){
	
	//dot suit = 1, bamboo suit = 2, wan suit = 3, wind suit = 4, dragon suit = 5
	switch(inst.suit){
		//dot
		case 1:
			switch(inst.rank){
				case 1:
					inst.card_name = "Dot 1";
					inst.sprite_index = spr_mahjong_dot1;
					break;
				case 2:
					inst.card_name = "Dot 2";
					inst.sprite_index = spr_mahjong_dot2;
					break;
				case 3:
					inst.card_name = "Dot 3";
					inst.sprite_index = spr_mahjong_dot3;
					break;
				case 4:
					inst.card_name = "Dot 4";
					inst.sprite_index = spr_mahjong_dot4;
					break;
				case 5:
					inst.card_name = "Dot 5";
					inst.sprite_index = spr_mahjong_dot5;
					break;
				case 6:
					inst.card_name = "Dot 6";
					inst.sprite_index = spr_mahjong_dot6;
					break;
				case 7:
					inst.card_name = "Dot 7";
					inst.sprite_index = spr_mahjong_dot7;
					break;
				case 8:
					inst.card_name = "Dot 8";
					inst.sprite_index = spr_mahjong_dot8;
					break;
				case 9:
					inst.card_name = "Dot 9";
					inst.sprite_index = spr_mahjong_dot9;
					break;
			}
			break;
		//bamboo
		case 2:
			switch(inst.rank){
				case 1:
					inst.card_name = "Bamboo 1";
					inst.sprite_index = spr_mahjong_bamboo1;
					break;
				case 2:
					inst.card_name = "Bamboo 2";
					inst.sprite_index = spr_mahjong_bamboo2;
					break;
				case 3:
					inst.card_name = "Bamboo 3";
					inst.sprite_index = spr_mahjong_bamboo3;
					break;
				case 4:
					inst.card_name = "Bamboo 4";
					inst.sprite_index = spr_mahjong_bamboo4;
					break;
				case 5:
					inst.card_name = "Bamboo 5";
					inst.sprite_index = spr_mahjong_bamboo5;
					break;
				case 6:
					inst.card_name = "Bamboo 6";
					inst.sprite_index = spr_mahjong_bamboo6;
					break;
				case 7:
					inst.card_name = "Bamboo 7";
					inst.sprite_index = spr_mahjong_bamboo7;
					break;
				case 8:
					inst.card_name = "Bamboo 8";
					inst.sprite_index = spr_mahjong_bamboo8;
					break;
				case 9:
					inst.card_name = "Bamboo 9";
					inst.sprite_index = spr_mahjong_bamboo9;
					break;
			}
			break;
		//Wan
		case 3:
			switch(inst.rank){
				case 1:
					inst.card_name = "Wan 1";
					inst.sprite_index = spr_mahjong_wan1;
					break;
				case 2:
					inst.card_name = "Wan 2";
					inst.sprite_index = spr_mahjong_wan2;
					break;
				case 3:
					inst.card_name = "Wan 3";
					inst.sprite_index = spr_mahjong_wan3;
					break;
				case 4:
					inst.card_name = "Wan 4";
					inst.sprite_index = spr_mahjong_wan4;
					break;
				case 5:
					inst.card_name = "Wan 5";
					inst.sprite_index = spr_mahjong_wan5;
					break;
				case 6:
					inst.card_name = "Wan 6";
					inst.sprite_index = spr_mahjong_wan6;
					break;
				case 7:
					inst.card_name = "Wan 7";
					inst.sprite_index = spr_mahjong_wan7;
					break;
				case 8:
					inst.card_name = "Wan 8";
					inst.sprite_index = spr_mahjong_wan8;
					break;
				case 9:
					inst.card_name = "Wan 9";
					inst.sprite_index = spr_mahjong_wan9;
					break;
			}
			break;
		//Wind
		case 4:
			switch(inst.rank){
				case 1:
					inst.card_name = "East Wind";
					inst.sprite_index = spr_mahjong_eastwind;
					break;
				case 2:
					inst.card_name = "South Wind";
					inst.sprite_index = spr_mahjong_southwind;
					break;
				case 3:
					inst.card_name = "West  Wind";
					inst.sprite_index = spr_mahjong_westwind;
					break;
				case 4:
					inst.card_name = "North Wind";
					inst.sprite_index = spr_mahjong_northwind;
					break;
			}
			break;
		case 5:
			switch(inst.rank){
				case 1:
					inst.card_name = "Red Dragon";
					inst.sprite_index = spr_mahjong_reddragon;
					break;
				case 2:
					inst.card_name = "Green Dragon";
					inst.sprite_index = spr_mahjong_greendragon;
					break;
				case 3:
					inst.card_name = "White Dragon";
					inst.sprite_index = spr_mahjong_whitedragon;
					break;
			}
			break;
	}
	//show_debug_message(inst.card_name+", "+string(inst.uid));
}