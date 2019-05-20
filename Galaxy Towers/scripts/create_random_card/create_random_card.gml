var ix = argument0
var iy = argument1
var ilayer = argument2
var iposition = argument3

var type
var rn = irandom(ds_list_size-1);
type = ds_list_find_value(handler.cards_not_in_use,rn);
ds_list_delete(handler.cards_not_in_use,rn);

var card = instance_create_depth(ix,iy,ilayer*(-1),type)
card.layer = ilayer
card.position = iposition
card.initialized = true