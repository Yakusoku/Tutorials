#define scr_text
///scr_text("Text", Speed, x, y);

var p_text  = argument0;
var p_speed = argument1;
var p_x     = argument2;
var p_y     = argument3;

var l_maxlength = view_wview[0];
var l_padding   = 8;
var l_font      = f_cambria;

var l_font_size   = font_get_size(l_font);
var l_text_length = string_length(p_text);

//show_message();

// Defining the font before using some string functions:
draw_set_font(l_font);
var l_text_width  = string_width_ext(p_text, l_font_size + (l_font_size / 2), l_maxlength);
var l_text_height = string_height_ext(p_text, l_font_size + (l_font_size / 2), l_maxlength);

var l_boxwidth  = l_text_width + (l_padding * 2);
var l_boxheight = l_text_height + (l_padding * 2 );

if (p_x + l_boxwidth > view_wview[0]){
    p_x -= (p_x + l_boxwidth) - view_wview[0];
}

if (p_y + l_boxheight > view_hview[0]){
    p_y -= (p_y + l_boxheight) - view_hview[0];
}

txtbox = instance_create(p_x, p_y, o_text);

with (txtbox){
    boxwidth    = l_boxwidth;
    boxheight   = l_boxheight;
    padding     = l_padding;
    maxlength   = l_maxlength;
    spd         = p_speed;
    font        = l_font;
    text_length = l_text_length;
    text        = p_text;
    font_size   = l_font_size;
}


#define scr_textbox
///scr_text("Text", f_Font, Speed, x, y);

var p_text  = argument0;
var p_font  = argument1;
var p_speed = argument2;
var p_x     = argument3;
var p_y     = argument4;

var l_maxlength = view_wview[0];
var l_padding   = 8;
//var l_font      = f_cambria;

draw_set_font(p_font);

var l_font_size   = font_get_size(p_font);
var l_text_length = string_length(p_text);

var l_text_width  = string_width_ext(p_text, l_font_size + (l_font_size / 2), l_maxlength);
var l_text_height = string_height_ext(p_text, l_font_size + (l_font_size / 2), l_maxlength);

var l_boxwidth  = l_text_width + (l_padding * 2);
var l_boxheight = l_text_height + (l_padding * 2 );

if (p_x + l_boxwidth > view_wview[0]){
    p_x -= (p_x + l_boxwidth) - view_wview[0];
}

if (p_y + l_boxheight > view_hview[0]){
    p_y -= (p_y + l_boxheight) - view_hview[0];
}

txtbox = instance_create(p_x, p_y, o_text);

with (txtbox){
    text        = p_text;
    font        = p_font;
    spd         = p_speed;

    boxwidth    = l_boxwidth;
    boxheight   = l_boxheight;
    padding     = l_padding;
    maxlength   = l_maxlength;
    text_length = l_text_length;
    font_size   = l_font_size;
}