/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
DetermineCard();

if(mouse_check_button_pressed(mb_left)){
	if(collision_point(mouse_x, mouse_y, self, false, false)){
		if(!selected){
			/*if(global.selectedCard != noone){
				global.selectedCard.y += 50;
				global.selectedCard.selected = false;
			}
			global.selectedCard = self;*/
			y -= 50;
			selected = true;
			
			//ds_list_add(global.selectedList,self);
		}else{
			y += 50;
			selected = false;
			//global.selectedCard = noone;
			//var index = ds_list_find_index(global.selectedList,self);
			//ds_list_delete(global.selectedList, index);
		}
	}
}