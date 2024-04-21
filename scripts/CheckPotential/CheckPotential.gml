// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function CheckPotential(){
	ds_list_clear(potential_list);
	for (var i = ds_list_size(player_list)-1; i >= 0; i--){
		if(player_list[|i].selected){
			ds_list_add(potential_list,player_list[|i]);
		}
	}
	for (var i = ds_list_size(playable_list)-1; i >= 0; i--){
		if(playable_list[|i].selected){
			ds_list_add(potential_list,playable_list[|i]);
		}
	}
	OrderList(potential_list);
	for (var i = 0; i < ds_list_size(potential_list); i ++ ){
		show_debug_message(mahjongHands[potential_list[|i].suit][potential_list[|i].rank]);
	}
	if(ds_list_size(potential_list)<=2 || ds_list_size(potential_list)>=5){
		show_debug_message("Invalid Hand!");
		OrderPlayable();
		OrderPlayerHand();
	}else{
		//potential kong
		if (ds_list_size(potential_list)==4){
			var kong_suit = potential_list[|0].suit;
			var kong_rank = potential_list[|0].rank;
			for (var i = 1; i <ds_list_size(potential_list); i++){
				if (potential_list[|i].suit != kong_suit || potential_list[|i].rank != kong_rank){
					show_debug_message("Invalid Hand!");
					OrderPlayable();
					OrderPlayerHand();
					break;
				}
			}
			//all good, move all card to the score deck
			SelectedToScore();
		}
		//potential pung
		if(ds_list_size(potential_list)==3){
			//only suit match will result in pung or chow
			if (potential_list[|0].suit == potential_list[|1].suit && potential_list[|2].suit == potential_list[|1].suit ){
				//pung
				if (potential_list[|0].rank == potential_list[|1].rank && potential_list[|2].rank == potential_list[|1].rank){
					SelectedToScore();
				}
				//only suit 1, 2 and 3 have chow
				if (potential_list[|0].suit<=3 && potential_list[|0].rank+1 == potential_list[|1].rank && potential_list[|1].rank+1 == potential_list[|2].rank){
					SelectedToScore();
				}
			}else{
				show_debug_message("Invalid Hand!");
				OrderPlayable();
				OrderPlayerHand();
			}
		}
	}
}