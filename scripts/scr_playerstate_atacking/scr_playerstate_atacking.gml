function scr_playerstate_atacking(){
	
hsp = 0;
vsp = 0;

if(sprite_index != fighter1_atacking){
	sprite_index = fighter1_atacking;
	image_speed = 0.7;
	image_index = 0;
	
}


if(image_index >= image_number -1 ) STATE = 1;

}