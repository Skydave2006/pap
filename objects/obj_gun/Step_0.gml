#region Tiro
		if (instance_exists(obj_gun)) {
		    var gun_x = obj_player.x;
		    var gun_y = obj_player.y;

		    if (key_shoot && global.bullets > 0) {
		        // Dispara múltiplos tiros
		        var directions = [
		            point_direction(gun_x, gun_y, mouse_x, mouse_y),
		            point_direction(gun_x, gun_y, mouse_x, mouse_y) + 25,
		            point_direction(gun_x, gun_y, mouse_x, mouse_y) - 25,
		            point_direction(gun_x, gun_y, mouse_x, mouse_y) + 12.5,
		            point_direction(gun_x, gun_y, mouse_x, mouse_y) - 12.5
		        ];

		        // Cria os tiros
		        for (var i = 0; i < array_length_1d(directions); i++) {
		            with (instance_create_layer(gun_x, gun_y, "shoot", obj_tiro)) {
		                speed = 30;
		                direction = directions[i];
		                image_angle = direction;
		            }
		        }

		        global.bullets--; // Decrementa o número de balas
		    }
		}
		#endregion