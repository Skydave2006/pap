#region Controles
key_right = keyboard_check(ord("D")) //anda para a direita
key_left = keyboard_check(ord("A")) //anda para a esquerda
key_jump = keyboard_check(vk_space) //pula
key_shoot = mouse_check_button_pressed(mb_left);//atirar
key_reset = keyboard_check_pressed(ord("R"))
#endregion

if key_reset
{
	game_restart()

}