script_execute(controles)

#region Movimentação
spd = 5;
vspd = 0;
hspd = 0;
grv = -1;
/*
// Movimentação horizontal
var _move = key_right - key_left;
hspd = _move * spd;

*/
vspd = vspd + grv; // Aplicando a gravidade
// Verifica se o objeto obj_player está presente na sala
if (instance_exists(obj_player)) {
    var jogador_x = obj_player.x;
    var jogador_y = obj_player.y;

    // Colisão Horizontal
    if(hspd != 0) image_xscale = sign(hspd);

    if (place_meeting(x + hspd, y, obj_parede)) {
        while(!place_meeting(x + sign(hspd), y, obj_parede)) {
            x = x + sign(hspd);
        }
        hspd = 0;
    }
    x = x + hspd;

    // Colisão Vertical
    if (vspd != 0) image_yscale = sign(vspd);

    if (place_meeting(x, y + vspd, obj_parede)) {
        while(!place_meeting(x, y + sign(vspd), obj_parede)) {
            y = y + sign(vspd);
        }
        vspd = 0;
    }
    y = y + vspd;
	/*
    // Salto
    if (place_meeting(x, y + 1, obj_parede) and key_jump) {
        vspd = -12;  // Aplicando a força do salto
    }
	*/
} else {
    show_debug_message("Error: obj_player instance does not exist in the room.");
}
#endregion

#region Tiro
if (instance_exists(obj_player)) {
    var jogador_x = obj_player.x;
    var jogador_y = obj_player.y;

    if (key_shoot && global.bullets > 0) {
        // Dispara múltiplos tiros
        var directions = [
            point_direction(jogador_x, jogador_y, mouse_x, mouse_y),
            point_direction(jogador_x, jogador_y, mouse_x, mouse_y) + 25,
            point_direction(jogador_x, jogador_y, mouse_x, mouse_y) - 25,
            point_direction(jogador_x, jogador_y, mouse_x, mouse_y) + 12.5,
            point_direction(jogador_x, jogador_y, mouse_x, mouse_y) - 12.5
        ];

        // Cria os tiros
        for (var i = 0; i < array_length_1d(directions); i++) {
            with (instance_create_layer(jogador_x, jogador_y, "shoot", obj_tiro)) {
                speed = 30;
                direction = directions[i];
                image_angle = direction;
            }
        }

        global.bullets--; // Decrementa o número de balas
    }
}
#endregion
