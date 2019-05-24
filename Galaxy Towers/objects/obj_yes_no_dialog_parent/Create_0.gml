dialog_yes_button = instance_create_depth(x-200,y+300,depth-1,obj_yes_no_dialog_yes_button)
dialog_no_button = instance_create_depth(x+200,y+300,depth-1,obj_yes_no_dialog_no_button)
dialog_yes_button.dialog = self
dialog_no_button.dialog = self

if(y < (1080/2 - 300)){
	vspeed = 15;	
}