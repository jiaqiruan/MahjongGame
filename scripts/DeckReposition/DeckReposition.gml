// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DeckReposition(deck_given, xpos, ypos){
	for (var i = 0; i < ds_list_size(deck_given); i++){
		deck_given[|i].x = xpos+(i*50);
		deck_given[|i].y = ypos;
	}
}