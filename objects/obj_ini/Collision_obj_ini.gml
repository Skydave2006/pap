if place_meeting(x+hspd,y,obj_ini)
		{
			while(!place_meeting(x+sign(hspd),y,obj_ini))
			{
				x= x + sign(hspd)
	
			}
			hspd = 0;
		}
		
if place_meeting(x,y+vspd,obj_ini)
		{
			while(!place_meeting(x,y+sign(vspd),obj_ini))
			{
				y= y + sign(vspd)
	
			}
			vspd = 0;
		}
		y = y+ vspd