if object_slime.x > object0.x and (place_meeting(x,y+2,object1)) {
	npcdirection= -1;
}	
if object0.x > object_slime.x and (place_meeting(x,y+2,object1)) {
	npcdirection= 1;
}

// Movement 
hsp = npcdirection * walksp;

vsp= vsp+grv;

if (place_meeting(x,y+1,object1)) {
	hsp=0;
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


