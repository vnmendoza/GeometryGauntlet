// Get player input
var _key_up = keyboard_check(ord("W"));
var _key_left = keyboard_check(ord("A"));
var _key_down = keyboard_check(ord("S"));
var _key_right = keyboard_check(ord("D"));

//calculate movement
var _horz_move = _key_right - _key_left;
var _vert_move = _key_down - _key_up;

hspeed = _horz_move * spd
vspeed = _vert_move * spd


//horizontal movement
if(place_meeting(x+hspeed,y+vspeed,obj_wall))
{
	while(abs(hspeed) > 0.1)
	{
		hspeed *= 0.5;
		if(!place_meeting(x+hspeed,y,obj_wall)) x += hspeed;
	}
	hspeed=0;
}


//show_message("Absolute Difference: " + string(absoluteDifference))


//vertical movement
if(place_meeting(x,y+vspeed,obj_wall))
{
	while(abs(vspeed) > 0.1)
	{
		vspeed *= 0.5;
		if(!place_meeting(x,y+vspeed,obj_wall)) y += vspeed;
	}
	vspeed=0;
}


x += hspeed;
y += vspeed;

// Rotation

// Define angle


travel_direction_angle = point_direction(x,y,x+hspeed,y+vspeed)
show_debug_message("tdierection " + string(travel_direction_angle))
//if(_horz_move > 0) 
//{
//	travel_direction_angle = -90;
//}

//if(_horz_move < 0)
//{
//	travel_direction_angle = 180;
//}
//else
//{
//	travel_direction_angle = image_angle	
//}


// Calculate the absolute angle difference
var _absolute_difference = angle_difference(travel_direction_angle, image_angle);
//show_debug_message("abs_diff " + string(_absolute_difference))
//if(_absolute_difference > 0)
//{
//	image_angle -= spd;
//	tempSpeed = spd;
//	while(_absolute_difference > 6)
//	{
//		tempSpeed *= 0.5;
//		image_angle -= tempSpeed
//	}
//}

//else if(_absolute_difference < 0)
//{
//	image_angle += spd;

//	tempSpeed = spd;
//	while(_absolute_difference < 6)
//	{
//		tempSpeed *= 0.5;
//		image_angle += tempSpeed
//	}
//}

//Animation
