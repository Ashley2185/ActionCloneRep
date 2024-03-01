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

//hit vfx plays if gremlin gets hit while standing still
if (place_meeting(x,y,obj_enemybullet))
{
	sprite_index = GremlinHit;
}

//hit vfx plays if gremlin gets hit while moving
if (place_meeting(x,y,obj_enemybullet) && keyboard_check(ord("A")))
{
	sprite_index = GremlinWalkingHit;
}
if (place_meeting(x,y,obj_enemybullet) && keyboard_check(ord("S")))
{
	sprite_index = GremlinWalkingHit;
}
if (place_meeting(x,y,obj_enemybullet) && keyboard_check(ord("W")))
{
	sprite_index = GremlinWalkingHit;
}
if (place_meeting(x,y,obj_enemybullet) && keyboard_check(ord("D")))
{
	sprite_index = GremlinWalkingHit;
}


//creating bullets to fire whenever you press left click
if (mouse_check_button_pressed(mb_left))
{
	var bullet = instance_create_depth(obj_gun.x,obj_gun.y,depth-1,obj_bullet);
	bullet.speed = 8;
	bullet.direction = point_direction(obj_gun.x,obj_gun.y,mouse_x,mouse_y);
	bullet.image_angle = bullet.direction;
	
	//gun fire audio
	audio_play_sound(gremlin_gun_sound,3,false);
	
	//recoil animation when gun fires
	var recoil = instance_create_depth(obj_gun.x,obj_gun.y,depth-1,obj_gremlinrecoil);
}

//recoil stops when you are not firing
if (mouse_check_button_released(mb_left))
{
	instance_destroy(obj_gremlinrecoil);
}




