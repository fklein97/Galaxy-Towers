	var i_d = ds_map_find_value(async_load, "id");
	if i_d == name {
		if ds_map_find_value(async_load, "status"){
			if ds_map_find_value(async_load, "result") != "" {
				 keyboard_string = ds_map_find_value(async_load, "result");
	        }
	    }
    }