/// @arg class
/// @arg id

// Args
var _class = argument[0];
var _id = argument[1];

// Add
with (oHTMLController) {
	var arr = [];
	
	arr[PR.CLASS] = _class;
	arr[PR.ID] = _id;
	
	// Get style
	// ID
	
	
	
	// Add
	ds_list_add(elements, arr);
}