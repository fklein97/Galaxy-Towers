if ds_map_find_value(async_load, "id") == testtext
	{
	    if ds_map_find_value(async_load, "status") == 0
	    {
	        result = string(ds_map_find_value(async_load, "result"));
			result_ready = true
		}
	}
