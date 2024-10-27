#region Controles
key_right = keyboard_check(ord("D")) //anda para a direita
key_left = keyboard_check(ord("A")) //anda para a esquerda
key_jump = keyboard_check(vk_space) //pula
key_shoot = mouse_check_button_pressed(mb_left);//atirar
key_gancho = mouse_check_button_pressed(mb_right);//gancho
key_bye_gancho = mouse_check_button_released(mb_right);//largar gancho
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

//var dir = direction;
//var gun_k = (x+4)*(dir)
//var _xx = x + lengthdir_x(0,image_angle)
//var y_offset = lengthdir_y(0,image_angle)

// Armazena as coordenadas do jogador
var jogador_x = obj_player.x;
var jogador_y = obj_player.y;

if key_shoot and global.bullets > 0
{
	
	with(instance_create_layer(jogador_x,jogador_y,"shoot",obj_tiro))
	{
		
		//bala disparada
		//global.bullets--;
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
		
		//bala disparada
		//global.bullets--;
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
		
		//bala disparada
		//global.bullets--;
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
		
		//bala disparada
		//global.bullets--;
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
		
		//bala disparada
		//global.bullets--;
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

#region Gancho

if(key_gancho)//gancho preessionado
{

	mx = mouse_x;//gancho x = mouse x
	my = mouse_y;// gancho y = mouse y
	
	if(place_meeting(mx,my,obj_parede_gancho))// se mx e my encontrarem uma parede
	{
	
		active = true; // variavel que ve se o gancho esta ativo ou não
	
	}

}

if(active)
{
	gravity = 0.1;
	x+= (mx - x)*0.1;
	y+= (my - y)*0.1;
}


if(key_bye_gancho)//gancho despressionado
{

	active = false;

}

#endregion