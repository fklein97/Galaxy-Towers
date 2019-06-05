ini_open(working_directory+"save.ini")
keyboard_string = ini_read_string_base64("preferences", "lastname", "")
ini_close()
dialog_button = instance_create_depth(x,y+300,depth-1,obj_ok_save_score_button)
dialog_button.dialog = self

if(y < (1080/2 - 300)){
	vspeed = 15;	
}