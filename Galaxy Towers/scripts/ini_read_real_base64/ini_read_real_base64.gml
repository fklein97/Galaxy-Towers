section = argument0
key = argument1
default_value = argument2

get = real(base64_decode(ini_read_string(section,key,base64_encode(string(default_value)))))
return get