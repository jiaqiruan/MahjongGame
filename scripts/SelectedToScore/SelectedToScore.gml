// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function SelectedToScore(){
	num_triplet ++;
	var tmpList = ds_list_create();
	for (var i = ds_list_size(player_list)-1; i >= 0; i--){
		if(player_list[|i].selected){
			player_list[|i].selected = false;
			ds_list_add(tmpList,player_list[|i]);
			ds_list_delete(player_list, i);
		}
	}
	for (var i = ds_list_size(playable_list)-1; i >= 0; i--){
		if(playable_list[|i].selected){
			playable_list[|i].selected = false;
			ds_list_add(tmpList,playable_list[|i]);
			ds_list_delete(playable_list, i);
		}
	}
	OrderList(tmpList);
	for (var i =0 ; i < ds_list_size(tmpList); i++){
		ds_list_add(score_list, tmpList[|i]);
	}
	ds_list_destroy(tmpList);
	DeckReposition(player_list, 50, 650);
	DeckReposition(playable_list, 50, 250);
	DeckReposition(score_list, 50, 850);
}