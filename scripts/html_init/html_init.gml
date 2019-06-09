gml_pragma("global", "html_init()");

// CSS maps
global.CSS_Ids = ds_map_create();
global.CSS_Classes = ds_map_create();

// Screen area
global.screenWidth = 1280;
global.screenHeight = 720;

// Initialize CSS here
CSS("test", "",
	"top: 32px;",
	"left: 32px;");