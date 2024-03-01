//enemy gun rotates around a fixed point as it follows the mouse
image_angle = point_direction(obj_enemy.x, obj_enemy.y, obj_gremlin.x, obj_gremlin.y);

x = obj_enemy.x + lengthdir_x (35, image_angle);
y = obj_enemy.y + lengthdir_y (35, image_angle);






