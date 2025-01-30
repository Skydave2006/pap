switch states_ini
{
	//Se o inimigo estiver livre
	case STATE_INI.FREE:
	
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
        if distance_to_object(obj_player) < distance
		{
			states_ini = STATE_INI.CHASE;
		
		}
	
		#endregion
		
	break;
	//Se o inimigo estiver congelado
	case STATE_INI.FREEZE:
	break;
	//Se o inimigo começar a presseguir o jogador
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
		
		// vé onde o jogador esta
		vir = sign(obj_player.x - x)
		//pressegue o jogador
		hspd =vir * 2;
		
		// ve se o jogador conseguio escapar
		 if distance_to_object(obj_player) > distance
		{
			states_ini = STATE_INI.FREE;
		
		}
		// ve se o jogador esta muito perto para começar a atacar
		if distance_to_object(obj_player) < 15
		{
			states_ini = STATE_INI.ATK;
		}
		#endregion
	break;
	
	case STATE_INI.ATK:	
	#region ATK
	// ve o indice do sprite para que no final da animação de dano e volte para o estado livre
	if image_index > image_number -1 
	{
		states_ini = STATE_INI.FREE;
		global.life--;
	}
	
	
	
	
					
	#endregion
	break;

}
//sprite de Atack
if states_ini = STATE_INI.ATK
{
	hspd = 0;
	sprite_index = spr_ini_atk;
	
}
//sprites de inimigo livre
if states_ini = STATE_INI.FREE
{
	hspd = 0;
	sprite_index = inimigo;
}
