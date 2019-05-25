section = argument0
key = argument1
default_value = argument2

get = base64_decode(ini_read_string(section,key,base64_encode(default_value)))
return get