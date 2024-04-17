// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function GenerateDeck(){
	for (var i = 1; i <= 3 ; i++){
		//starting from suit 1, dot
		//every tile have four card
		for (var j = 1; j <= 9 ; j++){
			for (var n = 0; n <4 ; n++) {
				var mahjongcard = instance_create_layer(0,0,"Instances",obj_card);
				mahjongcard.suit = i;
				mahjongcard.rank = j;
				mahjongcard.uid = n+1;
				ds_list_add(deck_list, mahjongcard);
			}
		}
	}
	//wind suit, 1 for east, 2 for south, 3 for west, 4 for north
	for (var i = 1; i<=4; i++){
		for (var n = 0; n <4 ; n++){
			var mahjongcard = instance_create_layer(0,0,"Instances",obj_card);
			mahjongcard.suit = 4;
			mahjongcard.rank = i;
			mahjongcard.uid = n+1;
			ds_list_add(deck_list, mahjongcard);
		}
	}
	//dragon suit, 1 for red. 2 for green, 3 for white..
	for (var i = 1; i<=3; i++){
		for (var n = 0; n <4 ; n++){
			var mahjongcard = instance_create_layer(0,0,"Instances",obj_card);
			mahjongcard.suit = 5;
			mahjongcard.rank = i;
			mahjongcard.uid = n+1;
			ds_list_add(deck_list, mahjongcard);
		}
	}
}