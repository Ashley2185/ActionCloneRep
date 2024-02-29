//enemy bullet spray
var enemybullet = instance_create_depth(obj_enemygun.x,obj_enemygun.y,depth-1,obj_enemybullet);
enemybullet.speed = 8;
enemybullet.direction = point_direction(obj_enemygun.x,obj_enemygun.y,mouse_x,mouse_y);
enemybullet.image_angle = enemybullet.direction;






