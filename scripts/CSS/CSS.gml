/// @arg class
/// @arg id
/// @arg styles...

// Args
var _class = argument[0];
var _id = argument[1];

// Map
var map = ds_map_create();

// Read
var first_arg = 2;
for (var i=first_arg; i<argument_count; i++) {
	// Style index
	var s = i-first_arg;
	
	// Get
	var _style = argument[2];
	
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
	var value = string_copy(_style, val_pos, string_length(_style)-val_pos);
	
	// Log
	show_debug_message("Style found: " + property + ": " + string(value));
	
	// Map
	
}

// Add
if (ds_map_size(map)) {
	// Using ID
	var par_map = global.CSS_Ids;
	var key = _id;
	
	// Using Class
	if (string_length(_class)) {
		par_map = global.CSS_Classes;
		key = _class;
	}
	
	ds_map_add_map(par_map, key, map);
}