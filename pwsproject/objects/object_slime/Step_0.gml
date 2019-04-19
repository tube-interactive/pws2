npc_right= place_meeting(x+1,y,object1)  
npc_left= place_meeting(x-1,y,object1)

// Movement 

move= npc_right-npc_left;

hsp = move * walksp;
vsp= vsp+grv;

if (place_meeting(x,y+1,object1)) and((place_meeting(x+5,y,object1)) or (place_meeting(x-5,y,object1)))
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


