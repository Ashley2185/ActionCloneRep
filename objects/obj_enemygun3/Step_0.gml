//enemy gun rotates around a fixed point as it follows the mouse
image_angle = point_direction(obj_enemy3.x, obj_enemy3.y, obj_gremlin.x, obj_gremlin.y);

x = obj_enemy3.x + lengthdir_x (35, image_angle);
y = obj_enemy3.y + lengthdir_y (35, image_angle);