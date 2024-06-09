/// @description Insert description here
// You can write your code in this editor

//draw player ids
for (var i = 1; i <= array_length(global.instance_ids); i++) {
	textOverPlayer("P"+string(i),75,i);
}

//draw player Names
for (var i = 1; i <= array_length(global.instance_ids); i++) {
	textOverPlayer(string(global.instance_ids[i-1].nameChosen),45,i);
}