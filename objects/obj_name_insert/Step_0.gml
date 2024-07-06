/// @description Insert description here
// You can write your code in this editor


// Check if the mouse is within the bounds of the text box
var _mouse_in_box = point_in_rectangle(mouse_x,mouse_y,x,y,x + text_box_width,y + text_box_height);
if (_mouse_in_box) && (mouse_check_button_pressed(mb_left)) {
    active = true; // Activate the text box
} else if !(_mouse_in_box) && (mouse_check_button_pressed(mb_left)) {
    active = false; // Deactivate the text box
}


if (active) {
    if (keyboard_check_pressed(vk_enter)) {
        // Handle Enter key: You can add code here to use the input string
        active = false; // Deactivate after pressing Enter
		//player_set_name(text,player_number);
		global.player_name[player_number -1] = text;
		player_open_main_menu();
		instance_destroy();
    } else if (keyboard_key == vk_backspace) && keyboard_check_pressed(vk_anykey){
        // Handle Backspace
        if (string_length(text) > 0) {
            text = string_delete(text, string_length(text), 1);
        }
    } else {
        // Add character to the text
        var key_string = chr(keyboard_key);
        //if (string_length(text) < max_length && (keyboard_key >= 32 && keyboard_key <= 126) && keyboard_check_pressed(vk_anykey)) {
		if (string_length(text) < max_length && keyboard_check_pressed(vk_anykey)) {
			text += key_string;
        }
    }
}
