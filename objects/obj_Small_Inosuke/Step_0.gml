/// @description Insert description here
// You can write your code in this editor


hitRock = collision_rectangle(x-sprite_get_width(obj_Rock)/2,
						   y-sprite_get_height(obj_Rock)/2,
						   x+sprite_get_width(obj_Rock)/2,
						   y+sprite_get_height(obj_Rock)/2,
						   obj_Rock,
						   false,
						   false)
if (hitRock != noone) {
	instance_destroy(hitRock)
	stunTimer = 0
	sprite_index = spr_Inosuke_Stunned
	switch (dashDir) {
		case 0: 
			image_xscale = -imageScale
			break
		case 1:
			image_xscale = imageScale
			break
	}
}

if (stunTimer < stunTimeout) {
	stunTimer += 1
	
} else {
	if (dashTimer < dashTimeout) {
		sprite_index = spr_Inosuke_Dash
		switch (dashDir) {
			case 0: 
				x += dashSpeed
				image_xscale = -imageScale
				break
			case 1:
				x -= dashSpeed
				image_xscale = imageScale
				break
		}
		dashTimer += 1
	} else {
		sprite_index= spr_Inosuke_Walk
		switch (dashDir) {
			case 0: 
				x += walkSpeed
				image_xscale = -imageScale
				break
			case 1:
				x -= walkSpeed
				image_xscale = imageScale
				break
		}
	
		nextDashTimer += 1
	}

	if (nextDashTimer >= nextDashTimeout) {
		dashTimer = 0
		nextDashTimer = 0
	}
}

if (x < 0) {
	dashDir = 0
}

if (x > room_width) {
	dashDir = 1
}

