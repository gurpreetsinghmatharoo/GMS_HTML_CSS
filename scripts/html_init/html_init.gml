gml_pragma("global", "html_init()");

// CSS maps
global.CSS_Ids = ds_map_create();
global.CSS_Classes = ds_map_create();

// Initialize CSS here
CSS("test", "",
	"top: 32px;",
	"left: 32px;");