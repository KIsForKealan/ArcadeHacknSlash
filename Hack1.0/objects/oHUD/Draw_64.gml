
#region Health bar
var _hpx = 8;
var _hpy = 8;
var _hpWidth = 198;
var _hpHeight = 6;

if instance_exists(oSkeleton)
{
	drawHP = lerp(drawHP, oSkeleton.hp, 0.10);
	drawHPMax = oSkeleton.hpMax;
}
else
{
	drawHP = lerp(drawHP, 0, 0.10);
}
var _hpPercent = drawHP / drawHPMax;

draw_rectangle_color(_hpx, _hpy, _hpx + (_hpWidth * _hpPercent), _hpy + _hpHeight,
					c_white, c_white, c_white, c_white, false);
	
draw_line_width_color(_hpx-1, _hpy-1, _hpx + _hpWidth, _hpy-1, 1, c_dkgray, c_dkgray);
draw_line_width_color(_hpx-1, _hpy + _hpHeight, _hpx + _hpWidth, _hpy + _hpHeight, 1, c_dkgray, c_dkgray);
draw_line_width_color(_hpx-1, _hpy-1, _hpx-1, _hpy + _hpHeight, 1, c_dkgray, c_dkgray);
draw_line_width_color(_hpx + _hpWidth, _hpy-1, _hpx + _hpWidth, _hpy + _hpHeight, 1, c_dkgray, c_dkgray);
#endregion

#region Kills
if not instance_exists(oSkeleton) exit;
var _text = "Kills: " + string(oSkeleton.kills);
var _textWidth = string_width(_text);
var _textHeight = string_height(_text);
var _startx = 8;
var _starty = 20;
var _paddingx = 4;
var _paddingy = 4;

draw_rectangle_color(_startx, _starty, _startx + _textWidth + _paddingx, _starty + _textHeight + _paddingy,
					c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(_startx + _paddingx/2, _starty + _paddingy, _text);
#endregion

var _text = "Level: " + string(oSkeleton.level);
_startx += _textWidth + _paddingx*3;
var _textWidth = string_width(_text);
var _textHeight = string_height(_text);


draw_rectangle_color(_startx, _starty, _startx + _textWidth + _paddingx, _starty + _textHeight + _paddingy,
					c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(_startx + _paddingx/2, _starty + _paddingy, _text);
