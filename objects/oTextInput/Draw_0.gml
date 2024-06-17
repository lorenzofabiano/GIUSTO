/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)) {
      type = !type;
      keyboard_string = text;
}
if(type) text = keyboard_string;
var t_ = text;
if(t_ == "") t_ = "Player";
draw_text(0, 0, t_);