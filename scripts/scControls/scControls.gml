// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scControls_P1() {
	 _up = keyboard_check_pressed(ord("W"));
	 _right = keyboard_check(ord("D"));
	 _left = keyboard_check(ord("A"));
}

function scControls_P2() {
	 _up = keyboard_check_pressed(ord("T"));
	 _right = keyboard_check(ord("H"));
	 _left = keyboard_check(ord("F"));
}

function scControls_P3() {
	 _up = keyboard_check_pressed(ord("I"));
	 _right = keyboard_check(ord("L"));
	 _left = keyboard_check(ord("J"));
}

function scControls_P4() {
	 _up = keyboard_check_pressed(vk_up);
	 _right = keyboard_check(vk_right);
	 _left = keyboard_check(vk_left);
}