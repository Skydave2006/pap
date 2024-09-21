#region Controles
key_right = keyboard_check(ord("D")) //anda para a direita
key_left = keyboard_check(ord("A")) //anda para a esquerda
key_jump = keyboard_check(vk_space) //pula
key_shoot = keyboard_check_pressed(ord("K"));//atirar
#endregion

#region Movimentação
var move = key_right - key_left

hspd = move * spd;

vspd= vspd+ grv;

// Colisão Horizontal
if(hspd != 0) image_xscale = sign(hspd);

if place_meeting(x+hspd,y,parede)
{
	while(!place_meeting(x+sign(hspd),y,parede))
	{
		x= x + sign(hspd)
	
	}
	hspd = 0;
}
x = x+ hspd

// Colisão Vertical
if(hspd != 0) image_xscale = sign(hspd);

if place_meeting(x,y+vspd,parede)
{
	while(!place_meeting(x,y+sign(vspd),parede))
	{
		y= y + sign(vspd)
	
	}
	vspd = 0;
}
y = y+ vspd

//Salto
if place_meeting(x,y+1,parede) and key_jump
{
vspd -= 12;
}
#endregion

#region Tiro

var dir = direction;
var gun_k = (x+4)*(dir)
var _xx = x + lengthdir_x(15,image_angle)
var y_offset = lengthdir_y(-20,image_angle)

if key_shoot and global.bullets > 0
{
	audio_play_sound(som_tiro,1,0)
	
	with(instance_create_layer(_xx,y+10,"shoot",obj_tiro))
	{
		//bala disparada
		global.bullets--;
		//velocidade
		speed = 30;
		//direção
		direction = -90 + 90 * other.image_xscale
		// angulo
		image_angle = direction;
	}
}
#endregion