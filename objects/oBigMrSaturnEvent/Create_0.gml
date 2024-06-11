/// @description Insert description here
// You can write your code in this editor
x = room_width/2;
y = room_height/10;

duration = 20 * 60;
endEventDuration = 180;
endEvent = false;

nOfBigMrSaturns = 2;

repeat(nOfBigMrSaturns) {
	instance_create_layer(x,y,"Instances",oBigMrSaturn);
}
