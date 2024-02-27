//move up
if (keyboard_check(ord("W"))) y -= gremlin_speed;

//move down
if (keyboard_check(ord("S"))) y += gremlin_speed;

//player moves right; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("D"))) 
{
	x += gremlin_speed;
	image_xscale = 1;
	image_yscale = 1;
}

//player moves left; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("A")))
{
	x -= gremlin_speed;
	image_xscale = -1;
	image_yscale = 1;
}

