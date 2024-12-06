switch states_ini
{
	case STATE_INI.FREE:
	
		#region Movimentação
		hspd = 0.5 * spd
		
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
        
	
		#endregion
		
	break;
	case STATE_INI.FREEZE:
	break;
	case STATE_INI.CHASE:
	break;

}