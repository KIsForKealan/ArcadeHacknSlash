
draw_self();

if state == "death" exit;

if alarm[0] > 0
{
	var _height = sprite_height;
	draw_rectangle_color(x-12, y-_height, x-12+(hp/hpMax)*24, y-(_height-2), c_white, c_white, c_white, c_white, false);
	draw_sprite(sEnemyHealthbar, 0, x-12, y-_height);
}