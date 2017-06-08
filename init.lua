
local dyes = {
	{"white",       "White",      		   "basecolor_white"},
	{"grey",        "Grey",       		   "basecolor_grey"},
	{"black",       "Black",      		   "basecolor_black"},
	{"red",         "Red",        		   "basecolor_red"},
	{"yellow",      "Yellow",     		   "basecolor_yellow"},
	{"green",       "Green",      		   "basecolor_green"},
	{"cyan",        "Cyan",       		   "basecolor_cyan"},
	{"blue",        "Blue",       	       "basecolor_blue"},
	{"magenta",     "Magenta",    		   "basecolor_magenta"},
	{"orange",      "Orange",     		   "excolor_orange"},
	{"violet",      "Violet",     		   "excolor_violet"},
	{"brown",       "Brown",      		   "unicolor_dark_orange"},
	{"pink",        "Pink",       		   "unicolor_light_red"},
	{"light_brown", "Light Brown",		   "unicolor_light_brown"},
	{"dark_grey",   "Dark Grey",  		   "unicolor_darkgrey"},
	{"dark_green",  "Dark Green",          "unicolor_dark_green"},
	{"royal_blue",  "Royal Blue",          "unicolor_royal_blue"},
	{"lime_green",  "Lime Green",          "unicolor_lime_green"},
	{"gradient_rb", "Gradient (Red/Blue)", "unicolor_gradient_rb"},
}

for i = 1, #dyes do
	local name, desc, craft_color_group = unpack(dyes[i])

	minetest.register_node("pixel_color:" .. name, {
		description = desc .. " Pixel",
		tiles = {"pixel_" .. name .. ".png"},
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1},
		sounds = default.node_sound_defaults(),
	})

end


