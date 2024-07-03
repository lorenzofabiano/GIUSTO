/// @description Insert description here
// You can write your code in this editor
var test_array = [0,100,200,300,400,500];

for (var i = 0; i < array_length(test_array); i++) {
	show_debug_message(string(test_array[i]));
}

show_debug_message("deleting entry 0 to 2 in test_array");

array_delete(test_array,0,3);

show_debug_message("now reprinting array content from index 0 to 2");

for (var i = 0; i < array_length(test_array); i++) {
	show_debug_message(string(test_array[i]));
}