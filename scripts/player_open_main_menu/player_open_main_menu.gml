// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_open_main_menu(){
	player_init(x,y,[["Nome", player_open_name_insert],["Skin", player_open_skin_selector],["Colore",player_open_color_selector],["Rimuovi",player_remove]],global.player_name[player_number-1],player_number);
	global.player_exists[player_number-1] = true;
}