// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DrawHands(number){
	for (var i = 0; i < number; i++){
		var card_drawn = deck_list[|ds_list_size(deck_list)-1];
		ds_list_add(player_list, card_drawn);
		ds_list_delete(deck_list, ds_list_size(deck_list)-1);
	}
	playable_hand+=number;
	DeckReposition(player_list,50,650);
	DeckReposition(deck_list,50,50);
}