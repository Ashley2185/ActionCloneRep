//enemy gun rotates around a fixed point as it follows the mouse
image_angle = point_direction(obj_enemy.x, obj_enemy.y, mouse_x, mouse_y);

x = obj_enemy.x + lengthdir_x (35, image_angle);
y = obj_enemy.y + lengthdir_y (35, image_angle);