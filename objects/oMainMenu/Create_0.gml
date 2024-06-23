/// @description Insert description here
// You can write your code in this editor
global.pause = true;

//SET RESOLUTION
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);


//CONTROLS
global.key_revert = ord("X")
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;

display_set_gui_size(global.view_width,global.view_height);


//SET GRID VALUES
enum menu_page {
	main,
	settings,
	audio,
	//difficulty,
	graphics,
	controls,
	height,
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input,
}

dsMenuMain = create_menu_page(
	["RESUME", menu_element_type.script_runner, resume_game],
	["OPTIONS", menu_element_type.page_transfer, menu_page.settings],
	["EXIT", menu_element_type.script_runner, exit_game],
);

dsMenuSettings = create_menu_page(
	["AUDIO", menu_element_type.page_transfer,  menu_page.audio],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],
	["CONTROLS", menu_element_type.page_transfer, menu_page.controls],
	["BACK", menu_element_type.page_transfer,  menu_page.main],
);

dsMenuAudio = create_menu_page(
	["MASTER", menu_element_type.slider,  change_volume, .5, [0,1]],
	["SOUNDS", menu_element_type.slider,  change_volume, .5, [0,1]],
	["MUSIC", menu_element_type.slider,  change_volume, .5, [0,1]],
	["BACK", menu_element_type.page_transfer,  menu_page.settings],
);

dsMenuGraphics = create_menu_page(
	["FULLSCREEN", menu_element_type.toggle,  toggle_fullscreen, 1, ["Fullscreen","Windowed"]],
	["BACK", menu_element_type.page_transfer,  menu_page.settings],
);

dsMenuControls = create_menu_page(
//["PLAYER", menu_element_type.shift, switch_player_input_page(),0,
["UP", menu_element_type.input, "UP", ord("W")],
["LEFT", menu_element_type.input, "LEFT", ord("A")],
["RIGHT", menu_element_type.input, "RIGHT", ord("D")],
["BACK", menu_element_type.page_transfer,  menu_page.settings],
);

page = 0;

menu_pages = [dsMenuMain,dsMenuSettings,dsMenuAudio,dsMenuGraphics,dsMenuControls];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len) {
	menu_option[i] = 0;
	i++;
}

inputting = false;