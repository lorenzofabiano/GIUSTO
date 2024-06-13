/// @description Insert description here
// You can write your code in this editor
#region trail
if (phy_speed > trailSpdThreshold) && (trailSpawnRate < 0) {
	with instance_create_layer(x,y,"Instances",oTrail) {
		rotation = other.phy_rotation;
	}
	
	trailSpawnRate = baseTrailSpawnRate;
	
}

trailSpawnRate--
#endregion