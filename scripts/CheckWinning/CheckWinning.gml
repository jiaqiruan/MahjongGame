// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function CheckWinning(list_given){
	if (ds_list_size(list_given)+(num_triplet*3) > 14) {
            return false;
    }
	var tmp_card = [];
	array_copy(tmp_card,0,tmp_card_template, 0,array_length(tmp_card_template));
	//show_debug_message(array_length(tmp_card));
	for (var i = 0 ; i<ds_list_size(list_given);i++){
		tmp_card[list_given[|i].uid] += 1;
	}
	//show_debug_message(string(tmp_card));
	return HelperWinning(tmp_card,0,num_triplet);
       /* int[] cards = new int[10]
        for (int i = 0; i < hand.length; i++) {
            cards[hand[i]] += 1;
        }
        return helper(cards, 0, 0);*/
	
}