//enemy bullet put in alarm system so bullets are fired every set frame
var enemybullet = instance_create_depth(obj_enemygun.x,obj_enemygun.y,depth-1,obj_enemybullet);
enemybullet.speed = 8;
enemybullet.direction = point_direction(obj_enemygun.x,obj_enemygun.y,obj_gremlin.x,obj_gremlin.y);
enemybullet.image_angle = enemybullet.direction;

alarm[3] = 20;





