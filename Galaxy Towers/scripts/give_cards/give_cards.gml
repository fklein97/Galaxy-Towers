var r = argument0;
if(r=0){
}

var base_x1 = 560
var base_x2 = 960
var base_x3 = 1360

if(os_type = os_android){
	base_x1 = 460
	base_x2 = 960
	base_x3 = 1460	
}

var base_y = 220

var card_w = sprite_get_width(spr_cardback_standart) + 8
var card_h = sprite_get_height(spr_cardback_standart) + 8

if(os_type = os_android){
	card_w = sprite_get_width(spr_cardback_standart) * 1.2 + 8
	card_h = sprite_get_height(spr_cardback_standart) * 1.2  + 8
}

//layer1
create_random_card(base_x1,base_y,1,1)

create_random_card(base_x2,base_y,1,2)

create_random_card(base_x3,base_y,1,3)

//layer2
create_random_card(base_x1-(card_w/2),base_y+(card_h/2),2,1)
create_random_card(base_x1+(card_w/2),base_y+(card_h/2),2,2)

create_random_card(base_x2-(card_w/2),base_y+(card_h/2),2,3)
create_random_card(base_x2+(card_w/2),base_y+(card_h/2),2,4)

create_random_card(base_x3-(card_w/2),base_y+(card_h/2),2,5)
create_random_card(base_x3+(card_w/2),base_y+(card_h/2),2,6)

//layer3
create_random_card(base_x1-(card_w),base_y+(card_h),3,1)
create_random_card(base_x1,base_y+(card_h),3,2)
create_random_card(base_x1+(card_w),base_y+(card_h),3,3)

create_random_card(base_x2-(card_w),base_y+(card_h),3,4)
create_random_card(base_x2,base_y+(card_h),3,5)
create_random_card(base_x2+(card_w),base_y+(card_h),3,6)

create_random_card(base_x3-(card_w),base_y+(card_h),3,7)
create_random_card(base_x3,base_y+(card_h),3,8)
create_random_card(base_x3+(card_w),base_y+(card_h),3,9)

//layer4
create_random_card(base_x1-(1.5*card_w),base_y+(1.5*card_h),4,1)
create_random_card(base_x1-(0.5*card_w),base_y+(1.5*card_h),4,2)
create_random_card(base_x1+(0.5*card_w),base_y+(1.5*card_h),4,3)
create_random_card(base_x1+(1.5*card_w),base_y+(1.5*card_h),4,4)
create_random_card(base_x1+(2.5*card_w),base_y+(1.5*card_h),4,5)
create_random_card(base_x1+(3.5*card_w),base_y+(1.5*card_h),4,6)
create_random_card(base_x1+(4.5*card_w),base_y+(1.5*card_h),4,7)
create_random_card(base_x1+(5.5*card_w),base_y+(1.5*card_h),4,8)
create_random_card(base_x1+(6.5*card_w),base_y+(1.5*card_h),4,9)
create_random_card(base_x1+(7.5*card_w),base_y+(1.5*card_h),4,10)

obj_rest_cards.rest_cards = handler.cards_not_in_use