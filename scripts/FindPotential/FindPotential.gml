// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function FindPotential(){
	OrderPlayerHand();
	potentialPungs = [
		[],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false)]
	];
	potentialChows = [
		[],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false)]
	];
	potentialKongs = [
		[],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false)]
	];
	for (var i = 0 ; i < ds_list_size(player_list) ; i++){
		//checking for potential pung
		if (i<ds_list_size(player_list)-1 && player_list[|i].suit == player_list[|i+1].suit && player_list[|i].rank == player_list[|i+1].rank){
			potentialPungs[player_list[|i].suit][player_list[|i].rank].indexArr = [i,i+1];
			potentialPungs[player_list[|i].suit][player_list[|i].rank].isPotential = true;
			//show_debug_message("Potential Pung: "+mahjongHands[player_list[|i].suit][player_list[|i].rank]);
		}
		//checking for potential kong
		if (i<ds_list_size(player_list)-2 && player_list[|i].suit == player_list[|i+1].suit && player_list[|i+1].suit ==  player_list[|i+2].suit && player_list[|i].rank == player_list[|i+1].rank && player_list[|i+1].rank ==  player_list[|i+2].rank){
			potentialKongs[player_list[|i].suit][player_list[|i].rank].indexArr = [i,i+1,i+2];
			potentialKongs[player_list[|i].suit][player_list[|i].rank].isPotential = true;
			//show_debug_message("Potential Kong: "+mahjongHands[player_list[|i].suit][player_list[|i].rank]);
			
		}
		//checking for potential chow
		if (i<ds_list_size(player_list)-1 && player_list[|i].suit <= 3 && player_list[|i].suit == player_list[|i+1].suit){
			//adjacent straight
			if  (player_list[|i+1].rank-player_list[|i].rank == 1){
				//have 1 and 2, waiting for 3
				if(player_list[|i].rank == 1){
					potentialChows[player_list[|i].suit][3].indexArr = [i,i+1];
					potentialChows[player_list[|i].suit][3].isPotential = true;
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][3]);
				}
				//have 8 and 9, waiting for 7
				else if (player_list[|i+1].rank == 9){
					potentialChows[player_list[|i].suit][7].indexArr = [i,i+1];
					potentialChows[player_list[|i].suit][7].isPotential = true;
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][7]);
				}
				//two-side straight waiting, example: have 2 and 3, waiting for 1 and 4
				else {
					potentialChows[player_list[|i].suit][player_list[|i].rank-1].indexArr = [i,i+1];
					potentialChows[player_list[|i].suit][player_list[|i].rank-1].isPotential = true;
					potentialChows[player_list[|i+1].suit][player_list[|i+1].rank+1].indexArr = [i,i+1];
					potentialChows[player_list[|i+1].suit][player_list[|i+1].rank+1].isPotential = true;
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][player_list[|i].rank-1]);
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i+1].suit][player_list[|i+1].rank+1]);
				}
			}
			//interval straight, example have 1 and 3, waiting for 2
			if (player_list[|i+1].rank-player_list[|i].rank == 2){
				potentialChows[player_list[|i].suit][player_list[|i].rank+1].indexArr = [i,i+1];
				potentialChows[player_list[|i].suit][player_list[|i].rank+1].isPotential = true;
				//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][player_list[|i].rank+1]);
			}
		}
	}
	var numOfPotential = 0;
	for (var i = 0 ; i < ds_list_size(playable_list) ; i ++ ){
		if (potentialPungs[playable_list[|i].suit][playable_list[|i].rank].isPotential){
			show_debug_message("Potential Pung: "+mahjongHands[playable_list[|i].suit][playable_list[|i].rank]+". Index of play list: "+string(potentialPungs[playable_list[|i].suit][playable_list[|i].rank].indexArr));
			
			/*var instButton = instance_create_layer(50+(200*numOfPotential), 550, "Instances", obj_button);
			instButton.card_event = "Pung";
			instButton.card_playable = mahjongHands[playable_list[|i].suit][playable_list[|i].rank];
			for (var j = 0 ; j < array_length(potentialPungs[playable_list[|i].suit][playable_list[|i].rank].indexArr); j++){
				array_push(instButton.playlist_index,potentialPungs[playable_list[|i].suit][playable_list[|i].rank].indexArr[j]);
			}
			numOfPotential++;*/
		}
		if (potentialKongs[playable_list[|i].suit][playable_list[|i].rank].isPotential){
			show_debug_message("Potential Kong: "+mahjongHands[playable_list[|i].suit][playable_list[|i].rank]+". Index of play list: "+string(potentialKongs[playable_list[|i].suit][playable_list[|i].rank].indexArr));
			
			/*var instButton = instance_create_layer(50+(200*numOfPotential), 550, "Instances", obj_button);
			instButton.card_event = "Kong";
			instButton.card_playable = mahjongHands[playable_list[|i].suit][playable_list[|i].rank];
			for (var j = 0 ; j < array_length(potentialKongs[playable_list[|i].suit][playable_list[|i].rank].indexArr); j++){
				array_push(instButton.playlist_index,potentialKongs[playable_list[|i].suit][playable_list[|i].rank].indexArr[j]);
			}
			numOfPotential++;*/
		}
		if (potentialChows[playable_list[|i].suit][playable_list[|i].rank].isPotential){
			show_debug_message("Potential Chow: "+mahjongHands[playable_list[|i].suit][playable_list[|i].rank]+". Index of play list: "+string(potentialChows[playable_list[|i].suit][playable_list[|i].rank].indexArr));
			
			/*var instButton = instance_create_layer(50+(200*numOfPotential), 550, "Instances", obj_button);
			instButton.card_event = "Chow";
			instButton.card_playable = mahjongHands[playable_list[|i].suit][playable_list[|i].rank];
			for (var j = 0 ; j < array_length(potentialChows[playable_list[|i].suit][playable_list[|i].rank].indexArr); j++){
				array_push(instButton.playlist_index,potentialChows[playable_list[|i].suit][playable_list[|i].rank].indexArr[j]);
			}
			numOfPotential++;*/
		}
	}
}