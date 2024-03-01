//lose health if you get hit
if (place_meeting(x,y,obj_bullet) && !invicible)
{
	show_debug_message("hp now 1");
	hp -= 1;
	invicible = true;
	sprite_index = EnemyHit;
}


//dies if it gets hit
if hp = 0
{
	show_debug_message("DEAD");
	instance_destroy(obj_enemy);
	instance_destroy(obj_enemygun);
	instance_destroy(obj_erecoil);
}

//how invincibility is triggered/untriggered
if (invicible)
{
	invicible_timer++;
	if (invicible_timer > invicible_duration)
	{
		invicible = false;
		invicible_timer = 0;
	}
}