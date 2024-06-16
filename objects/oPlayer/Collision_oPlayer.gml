/// @description Insert description here
// You can write your code in this editor
if (phy_speed > 2) {
	for(var i = 0; i < phy_collision_points; i += 1;)
	{
	    repeat(2) instance_create_layer(phy_collision_x[i], phy_collision_y[i],"Instances",oSpark);
	}
}
