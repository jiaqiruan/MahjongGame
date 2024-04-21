// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HelperWinning(card, pair_count, triplet_count){
	if(pair_count == 1 && triplet_count == 4){
		return true;
	}
	
	for (var i = 0; i<array_length(card); i++){
		if(card[i]==0){
			continue;
		}
		// in trio
        if(card[i] >= 3){
			card[i] -= 3;
			if (HelperWinning(card, pair_count, triplet_count + 1)) {
				return true;
            }
			card[i] += 3;
		}
		// in pair
		if(card[i] >= 2){
			card[i] -= 2;
			if (HelperWinning(card, pair_count+1, triplet_count)) {
				return true;
            }
			card[i] += 2;
		}
		// in sequence
		if(i>=1 && i <=9){
			if (i + 2 <= 9 && card[i] >= 1 && card[i+1] >= 1 && card[i+2] >= 1){
				card[i] -= 1;
                card[i+1] -= 1;
                card[i+2] -= 1;
				if(HelperWinning(card,pair_count,triplet_count+1)){
					return true;
				}
				card[i] += 1;
                card[i+1] += 1;
                card[i+2] += 1;
			}
		}
		if (i>=11 && i<=19){
			if (i + 2 <= 19 && card[i] >= 1 && card[i+1] >= 1 && card[i+2] >= 1){
				card[i] -= 1;
                card[i+1] -= 1;
                card[i+2] -= 1;
				if(HelperWinning(card,pair_count,triplet_count+1)){
					return true;
				}
				card[i] += 1;
                card[i+1] += 1;
                card[i+2] += 1;
			}
		}
		if (i>=21 && i<=29){
			if (i + 2 <= 29 && card[i] >= 1 && card[i+1] >= 1 && card[i+2] >= 1){
				card[i] -= 1;
                card[i+1] -= 1;
                card[i+2] -= 1;
				if(HelperWinning(card,pair_count,triplet_count+1)){
					return true;
				}
				card[i] += 1;
                card[i+1] += 1;
                card[i+2] += 1;
			}
		}
	}
	return false;
}