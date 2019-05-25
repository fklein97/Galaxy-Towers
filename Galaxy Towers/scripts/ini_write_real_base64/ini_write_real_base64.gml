section = argument0
key = argument1
value = argument2

valuestring = base64_encode(string(value))

ini_write_string(section,key,valuestring)