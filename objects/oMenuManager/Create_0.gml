/// @description Insert description here
// You can write your code in this editor
#region set global variables

var player1_exists = false;
var player1_name = "PLAYER 1";
var player1_skin = Sprite1_1;
var player1_control_scheme = 1;
var player1_color = c_white;

var player2_exists = false;
var player2_name = "PLAYER 2";
var player2_skin = Sprite1_1;
var player2_control_scheme = 2;
var player2_color = c_white;

var player3_exists = false;
var player3_name = "PLAYER 3";
var player3_skin = Sprite1_1;
var player3_control_scheme = 3;
var player3_color = c_white;

var player4_exists = false;
var player4_name = "PLAYER 4";
var player4_skin = Sprite1_1;
var player4_control_scheme = 4;
var player4_color = c_white;

global.player_exists = [player1_exists,player2_exists,player3_exists,player4_exists];
global.player_name = [player1_name,player2_name,player3_name,player4_name];
global.player_skin = [player1_skin,player2_skin,player3_skin,player4_skin];
global.player_color = [player1_color,player2_color,player3_color,player4_color];
global.menu_margin_x = 50;
global.skins = [Sprite1_1,Sprite1_3,Sprite1_4,Sprite1_5,Sprite1_6,Sprite1_7];
//global.colors = [c_black, c_white, c_aqua, c_blue, c_dkgray, c_fuchsia, c_gray, c_green, c_lime, c_ltgray, c_maroon, c_navy, c_olive, c_orange, c_purple, c_red, c_silver, c_teal, c_yellow]
global.colors = [c_white, c_aqua, c_blue, c_dkgray, c_fuchsia, c_gray, c_green, c_lime, c_ltgray, c_maroon, c_navy, c_olive, c_orange, c_purple, c_red, c_silver, c_teal, c_yellow]

#endregion

#region create menu inits

player_menu_init_create(1);
player_menu_init_create(2);
player_menu_init_create(3);
player_menu_init_create(4);
instance_create_layer(room_width/2,room_height/4,"Instances",obj_timer_selector);

#endregion


#region play music
audio_group_set_gain(audiogroup_default,.2,0);

global.menu_music = getRandomMenuMusic();

audio_stop_all();
audio_play_sound(global.menu_music,1,true);
#endregion