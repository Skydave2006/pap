switch states_ini
{
	case STATE_INI.FREE:
	
		#region Movimentação
		//hspd = 0.5 * spd
		
		vspd= vspd+ grv;

		// Colisão Horizontal
		if(hspd != 0) image_xscale = sign(hspd);

		if place_meeting(x+hspd,y,obj_parede)
		{
			while(!place_meeting(x+sign(hspd),y,obj_parede))
			{
				x= x + sign(hspd)
	
			}
			
			hspd = 0;			
			
		}
		
		x = x+ hspd

		// Colisão Vertical
		if(hspd != 0) image_xscale = sign(hspd);

		if place_meeting(x,y+vspd,obj_parede)
		{
			while(!place_meeting(x,y+sign(vspd),obj_parede))
			{
				y= y + sign(vspd)
	
			}
			vspd = 0;
		}
		y = y+ vspd
        if distance_to_object(obj_player) < distance
		{
			states_ini = STATE_INI.CHASE;
		
		}
	
		#endregion
		
	break;
	case STATE_INI.FREEZE:
	break;
	case STATE_INI.CHASE:
		#region Movimentação
		
		
		vspd= vspd+ grv;

		// Colisão Horizontal
		if(hspd != 0) image_xscale = sign(hspd);

		if place_meeting(x+hspd,y,obj_parede)
		{
			while(!place_meeting(x+sign(hspd),y,obj_parede))
			{
				x= x + sign(hspd)
	
			}
			
			hspd = 0;			
			
		}
		
		x = x+ hspd

		// Colisão Vertical
		if(hspd != 0) image_xscale = sign(hspd);

		if place_meeting(x,y+vspd,obj_parede)
		{
			while(!place_meeting(x,y+sign(vspd),obj_parede))
			{
				y= y + sign(vspd)
	
			}
			vspd = 0;
		}
		y = y+ vspd
		
		
		vir = sign(obj_player.x- x)
		hspd =vir * 2;
		
		
		 if distance_to_object(obj_player) > distance
		{
			states_ini = STATE_INI.FREE;
		
		}
		
		if distance_to_object(obj_player) < 100{
			states_ini = STATE_INI.ATK;
		}
		#endregion
	break;
	
	case STATE_INI.ATK:	
	#region ATK
	if distance_to_object(obj_player) > 100{
			states_ini = STATE_INI.FREE;
		}
	
					
	#endregion
	break;

}

if states_ini = STATE_INI.ATK
{
	hspd = 0;
}
if states_ini = STATE_INI.FREE
{
	hspd = 0;
}
