// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function OrderPlayable(){
	for (var i = 0 ; i < ds_list_size(playable_list); i ++ ){
		playable_list[|i].selected = false;
	}
	DeckReposition(playable_list, 50 , 250);
}