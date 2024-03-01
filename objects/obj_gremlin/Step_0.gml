//can move up until it hits wall
if (keyboard_check(ord("W")) && !place_meeting(x,y-8,obj_wall))
{
	y -= gremlin_speed;
	sprite_index = GremlinWalking;
	
}

//by default gremlin does not have walking animation
else
{
	sprite_index = Gremlin;
}


//can move down until it hits wall
if (keyboard_check(ord("S")) && !place_meeting(x,y+8,obj_wall))
{
	y += gremlin_speed;
	sprite_index = GremlinWalking;
	
}

//player can move right until it hits wall; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("D")) && !place_meeting(x+8,y,obj_wall))
{
	x += gremlin_speed;
	image_xscale = 1;
	image_yscale = 1;
	sprite_index = GremlinWalking;
	
}

//player can move left until it hits wall; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("A")) && !place_meeting(x-8,y,obj_wall))
{
	x -= gremlin_speed;
	image_xscale = -1;
	image_yscale = 1;
	sprite_index = GremlinWalking;
	
}

//creating bullets to fire whenever you press space
if (mouse_check_button_pressed(mb_left))
{
	var bullet = instance_create_depth(obj_gun.x,obj_gun.y,depth-1,obj_bullet);
	bullet.speed = 8;
	bullet.direction = point_direction(obj_gun.x,obj_gun.y,mouse_x,mouse_y);
	bullet.image_angle = bullet.direction;
}




