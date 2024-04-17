// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function OrderList(given_list){
	var listHands = [];
	while(!ds_list_empty(given_list)){
		array_push(listHands,given_list[|ds_list_size(given_list)-1]);
		ds_list_delete(given_list,ds_list_size(given_list)-1);
	}
	
	var _f = function(inst1, inst2){
	    if(inst1.suit!=inst2.suit){
			return inst1.suit - inst2.suit;
		}else{
			return inst1.rank - inst2.rank;
		}
	}
	
	array_sort(listHands, _f);
	for (var i = 0; i < array_length(listHands); i++){
		//show_debug_message(playerHands[i].suit);
		//listHands[i].selected = false;
		ds_list_add(given_list, listHands[i]);
	}
}