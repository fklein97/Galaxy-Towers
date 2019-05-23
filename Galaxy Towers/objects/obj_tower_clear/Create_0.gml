handler.game_score += bonus_score
score_text = instance_create_depth(x,y+100,depth-1,obj_score_change_text)
score_text.change_value = bonus_score