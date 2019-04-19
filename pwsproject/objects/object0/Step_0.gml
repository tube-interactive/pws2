key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space); 

// Movement 
var move =  key_right-key_left;

hsp = move * walksp;
vsp= vsp+grv;

if (place_meeting(x,y+1,object1)) and (key_jump)
{
	vsp=-7;
}
//Horizontal Collision
if (place_meeting(x+hsp,y,object1)) 
{
	while(!place_meeting(x+sign(hsp),y,object1))
	{
		x=x+sign(hsp);
	}
	hsp=0;
}
x=x+hsp;
//Vertical Collision
if (place_meeting(x,y+vsp,object1))  
{
	while(!place_meeting(x,y+sign(vsp),object1))
	{
		y=y+sign(vsp);
	}
	vsp=0;
}
y=y+vsp;


