/// @description 
#region Constants
// Array properties
enum PR {
	CLASS,
	ID,
	STYLE
}

// Style properties
enum STYLE {
	LEFT,
	TOP,
	RIGHT,
	BOTTOM,
	
	WIDTH,
	HEIGHT
}

// Style names
global.styleNames[STYLE.LEFT] = "left";
global.styleNames[STYLE.TOP] = "top";
global.styleNames[STYLE.RIGHT] = "right";
global.styleNames[STYLE.BOTTOM] = "bottom";
global.styleNames[STYLE.WIDTH] = "width";
global.styleNames[STYLE.HEIGHT] = "height";
#endregion

#region Initialize

elements = ds_list_create();

#endregion
