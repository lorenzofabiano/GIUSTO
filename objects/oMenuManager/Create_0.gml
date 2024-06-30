/// @description Insert description here
// You can write your code in this editor
#region set global variables

global.player1_exists = false;
global.player1_name = "";
global.player1_skin = Sprite1_1;
global.player1_control_scheme = 1;

global.player2_exists = false;
global.player2_name = "";
global.player2_skin = Sprite1_1;
global.player2_control_scheme = 2;

global.player3_exists = false;
global.player3_name = "";
global.player3_skin = Sprite1_1;
global.player3_control_scheme = 3;

global.player4_exists = false;
global.player4_name = "";
global.player4_skin = Sprite1_1;
global.player4_control_scheme = 4;


#region create menu inits

player_menu_init_create(1);
player_menu_init_create(2);
player_menu_init_create(3);
player_menu_init_create(4);

#endregion