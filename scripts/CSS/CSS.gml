/// @arg class
/// @arg id
/// @arg styles...

// Args
var _class = argument[0];
var _id = argument[1];

// Log
show_debug_message("Reading style for class: " + _class + ", id: " + _id);

// Map
//var map = ds_map_create();

// Array
var styles = array_create(STYLE.END, undefined);

// Read
var first_arg = 2;
for (var i=first_arg; i<argument_count; i++) {
	// Get
	var _style = argument[i];
	
	// Format
	_style = string_replace_all(_style, ";", "");
	_style = string_replace_all(_style, " ", "");
	
	// Get property
	var colon_pos = string_pos(":", _style);
	
		// -> Errors
		if (!colon_pos) {
			show_debug_message("HTML ERROR: Style invalid (" + _style + ")");
		}
		// <-
	
	var property = string_copy(_style, 1, colon_pos-1);
	
	// Get value
	var val_pos = colon_pos+1;
	var value = string_copy(_style, val_pos, string_length(_style)-colon_pos);
	
	// Log
	show_debug_message("Style found: " + property + ": " + value);
	
	// Parse pixel size
	if (string_pos("px", value)) {
		value = string_replace(value, "px", "");
		value = real(string_digits(value));
	}
	// Parse percent size
	else if (string_pos("%", value)) {
		value = real(string_digits(value));
		
		// Dimension
		var size;
		
		switch (property) {
			case "left": case "right": case "width":
				size = global.screenWidth;
			break;
			
			default:
				size = global.screenHeight;
			break;
		}
		
		// Multiply
		value = size * (value/100);
	}
	
	// Log
	show_debug_message("Style parsed: " + property + ": " + string(value));
	
	// Map
	//map[? property] = value;
	
	// Add to array
	var ind = html_indexOf(global.styleNames, property);
	
	if (ind) styles[ind] = value;
}

// Add
//if (ds_map_size(map)) {
	var par_map, key;
	
	// Using Class
	par_map = global.CSS_Classes;
	key = _class;
	
	// Using ID
	if (string_length(_id)) {
		par_map = global.CSS_Ids;
		key = _id;
	}
	
	//ds_map_add_map(par_map, key, map);
//}