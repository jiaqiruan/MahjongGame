// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function OrderPlayerHand(){
	playerHands = [];
	while(!ds_list_empty(player_list)){
		array_push(playerHands,player_list[|ds_list_size(player_list)-1]);
		ds_list_delete(player_list,ds_list_size(player_list)-1);
	}
	
	var _f = function(inst1, inst2){
	    if(inst1.suit!=inst2.suit){
			return inst1.suit - inst2.suit;
		}else{
			return inst1.rank - inst2.rank;
		}
	}
	
	array_sort(playerHands, _f);
	for (var i = 0; i < array_length(playerHands); i++){
		//show_debug_message(playerHands[i].suit);
		playerHands[i].selected = false;
		ds_list_add(player_list, playerHands[i]);
	}
	
	DeckReposition(player_list,50,650);
}