// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DiscardHands(){
	var indexArr= [];
	for (var i = ds_list_size(player_list)-1; i >= 0; i--){
		if(player_list[|i].selected){
			ds_list_add(discard_list,player_list[|i]);
			array_push(indexArr,i);
		}
	}
	for (var i = 0; i < array_length(indexArr); i ++){
		ds_list_delete(player_list,indexArr[i]);
	}
	playable_hand-=array_length(indexArr);
	DeckReposition(player_list, 50, 650);
	DeckReposition(discard_list, 50, 450);
}