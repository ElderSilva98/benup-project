function scr_playerstate_normal(){
	
//CONTROLS//
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
atack = keyboard_check_pressed(vk_space);

//MOVEMENT//
var h_move = right - left;
var v_move = up - down;

hsp = h_move * h_walkspeed;
vsp = v_move * v_walkspeed;

//HORIZONTAL COLLISION//
if(place_meeting(x+hsp,y,obj_block))
{
	while(!place_meeting(x+sign(hsp),y,obj_block))
	{
		x = x + sign(hsp);
	}

	hsp = 0
}

x = x+hsp;

//VERTICAL COLLISION//
if(place_meeting(x,y+vsp,obj_block))
{
	while(!place_meeting(x,y+sign(vsp),obj_block))
	{
		y = y + sign(vsp);
	}

	vsp = 0
}

y = y+vsp;


if(hsp == 0 && vsp == 0){
sprite_index = fighter1_idle;
}else sprite_index = fighter1_walking;

if(hsp != 0)image_xscale = sign(hsp);

if(atack) STATE = 2;

}