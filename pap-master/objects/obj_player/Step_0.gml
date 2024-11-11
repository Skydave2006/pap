#region Controles
key_right = keyboard_check(ord("D")) //anda para a direita
key_left = keyboard_check(ord("A")) //anda para a esquerda
key_jump = keyboard_check(vk_space) //pula
key_shoot = mouse_check_button_pressed(mb_left);//atirar
#endregion

#region Movimentação

var _move = key_right - key_left

hspd = _move * spd;

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

//Salto
if place_meeting(x,y+1,obj_parede) and key_jump
{
vspd -= 12;
}
#endregion

#region Tiro


// Armazena as coordenadas do jogador
var jogador_x = obj_player.x;
var jogador_y = obj_player.y;

if key_shoot and global.bullets > 0
{
	//-1 bala
	//global.bullets--;
	
	with(instance_create_layer(jogador_x,jogador_y,"shoot",obj_tiro))
	{	
		//velocidade
		speed = 30;
		//velocidade teste
		//speed = 5;
		//direção
		direction = point_direction(jogador_x, jogador_y, mouse_x, mouse_y);
		// angulo
		image_angle = direction;
		
	}		
	with(instance_create_layer(jogador_x,jogador_y,"shoot",obj_tiro))
	{
		
		
		//velocidade
		speed = 30;
		//velocidade teste
		//speed = 5;
		//direção
		direction = point_direction(jogador_x, jogador_y, mouse_x, mouse_y) + 25;
		// angulo
		image_angle = direction;
		
	}	
	with(instance_create_layer(jogador_x,jogador_y,"shoot",obj_tiro))
	{
		
		
		//velocidade
		speed = 30;
		//velocidade teste
		//speed = 5;
		//direção
		direction = point_direction(jogador_x, jogador_y, mouse_x, mouse_y) - 25;
		// angulo
		image_angle = direction;
		
	}
	with(instance_create_layer(jogador_x,jogador_y,"shoot",obj_tiro))
	{
		
		
		//velocidade
		speed = 30;
		//velocidade teste
		//speed = 5;
		//direção
		direction = point_direction(jogador_x, jogador_y, mouse_x, mouse_y) + 12.5;
		// angulo
		image_angle = direction;
		
	}	
	with(instance_create_layer(jogador_x,jogador_y,"shoot",obj_tiro))
	{
		
		
		//velocidade
		speed = 30;
		//velocidade teste
		//speed = 5;
		//direção
		direction = point_direction(jogador_x, jogador_y, mouse_x, mouse_y) - 12.5;
		// angulo
		image_angle = direction;
		
	}	
	
}
#endregion

