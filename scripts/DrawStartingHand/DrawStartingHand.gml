// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DrawStartingHand(){
	for (var i = 0; i < 13; i++){
		var card_drawn = deck_list[|ds_list_size(deck_list)-1];
		ds_list_add(player_list, card_drawn);
		ds_list_delete(deck_list, ds_list_size(deck_list)-1);
	}
	DeckReposition(player_list,50,650);
	DeckReposition(deck_list,50,50);
}