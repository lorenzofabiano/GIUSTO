// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Menu(_x,_y,_options,_description = -1){
	with(instance_create_depth(_x,_y,-999,oMenu)) {
		options = _options;
		description = _description;
		optionsCount = array_length(_options)
		hovermarker = "* ";
		//hovermarker = sCursor;
		
		//Set up size
		margin = 8;
		//Set your font
		//draw_set_font(yourFont);
		
		width = 1;
		if(_description != -1) width = max(width,string_width(_description));
		for (var i = 0; i < optionsCount; i++) {
			width = max(width,string_width(_options[i][0]));
		}
		width += string_width(hovermarker);
		heightLine = 17;
		height = heightLine * (optionsCount + !(description == -1));
		
		widthFull = width + margin * 2;
		heightFull = height + margin * 2;
	}
}