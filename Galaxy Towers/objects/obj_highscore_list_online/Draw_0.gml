draw_self()
draw_set_color(c_white)
draw_set_font(fnt_game)
draw_set_valign(fa_middle)

draw_set_halign(fa_center)
draw_text(x,y-80,"Online Highscores - " + global.gamemode)

draw_set_halign(fa_left)

if text == "Ready"{
	draw_text_highscore(x, y, "", "Name", "Score", string(text2), player_name, c_green);
}
else{
	draw_text(x, y, text);
}

draw_set_halign(fa_center)
draw_text(x,y+700,"Click to switch to Local Highscores!")