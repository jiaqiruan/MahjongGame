// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DiscardPlayables(){
	while(!ds_list_empty(playable_list)){
		var discardCard = playable_list[|0];
		ds_list_add(discard_list,discardCard);
		ds_list_delete(playable_list,0);
	}
	DeckReposition(playable_list, 50, 250);
	DeckReposition(discard_list, 50, 450);
}