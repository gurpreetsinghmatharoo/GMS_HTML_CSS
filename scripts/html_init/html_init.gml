gml_pragma("global", "html_init()");

#region Internal
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
	HEIGHT,
	
	END
}

// Style names
global.styleNames[STYLE.LEFT] = "left";
global.styleNames[STYLE.TOP] = "top";
global.styleNames[STYLE.RIGHT] = "right";
global.styleNames[STYLE.BOTTOM] = "bottom";
global.styleNames[STYLE.WIDTH] = "width";
global.styleNames[STYLE.HEIGHT] = "height";

// CSS maps
global.CSS_Ids = ds_map_create();
global.CSS_Classes = ds_map_create();

// Screen area
global.screenWidth = 1280;
global.screenHeight = 720;
#endregion

// -----> Initialize CSS here
CSS("test", "",
	"top: 32px;",
	"left: 32px;");