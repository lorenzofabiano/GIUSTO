/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(sMenu,0,x-margin,y-margin,widthFull,heightFull);

//draw_player_sprite
draw_sprite_ext(sShadow,0,x+sprite_margin_x,y-sprite_margin_y,1.1,1.1,0,global.player_color[player_number-1],1);
draw_sprite(global.player_skin[player_number-1],0,x+sprite_margin_x,y-sprite_margin_y);


draw_set_color(c_white);
//draw_set_font(yourFont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);

for (l = 0; l < (optionsCount + _desc); l++){
	draw_set_color(c_white);
	if (l == 0) && (_desc) {
		draw_text(x,y, description);
	} 
	else {
		var _str = options[l-_desc][0];
		if (hover == l - _desc) {
			draw_set_colour(c_yellow);
			_str = hovermarker+_str;
		}
		draw_text(x,y + l *heightLine, _str);
	}
}
