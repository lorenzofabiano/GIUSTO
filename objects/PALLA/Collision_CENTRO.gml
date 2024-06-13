if lastTouchedBy != noone {

	centroX = other.x;
	centroY = other.y;
	
	lastTouchedBy.points++;
	with instance_create_layer(x,y,"Instances",oPlusOne) {
		playerWhoScored = other.lastTouchedBy.nameChosen;
		color = other.lastTouchedBy.ownColor;
		x = other.centroX;
		y = other.centroY;
	}
	
}