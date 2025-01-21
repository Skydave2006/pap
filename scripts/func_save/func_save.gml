global.game_data = 
{
	room_data: {}
	
}

function Save(){
	
	save_room();
	
	var _string = json_stringify(global.game_data);
	
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	
	buffer_write(_buffer, buffer_string, _string);
	
	buffer_save(_buffer,"save.txt");
	
	buffer_delete(_buffer);
/*
	var _file = file_text_open_write("save.txt");

	file_text_write_string(_file, _string);

	file_text_close(_file);
	*/


}
	
function save_room(){
	var _array = [];
	var _struct_key =
	{
		room: room_get_name(room)	
	}
	array_push(_array,_struct_key)
	with(obj_ini){
	
		var _struct = 
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index
	
		};
		
		
		array_push(_array,_struct)
		
	}
	with(obj_ammo)
	{
		var _struct = 
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index
	
		};
		
		
		array_push(_array,_struct)
		
	}
	with(obj_vida)
	{
		var _struct = 
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index
	
		};
		
		
		array_push(_array,_struct)
		
	}
	
	with(obj_player){
		var _struct = 
		{
			object: object_get_name(object_index),
			life: global.life,
			bullets: global.bullets,
			points: global.points,
			x: obj_player.x,
			y: obj_player.y,
			image_index: obj_player.image_index
		
		};
		
		array_push(_array,_struct)
	}
	
	struct_set(global.game_data.room_data, room_get_name( room),_array);
}
	
function Load(){

	if(file_exists("save.txt"))
	{
		//var _file = file_text_open_read("save.txt");
		
		//var _json = file_text_read_string(_file);
		var _buffer = buffer_load("save.txt");
		
		var _json = buffer_read(_buffer, buffer_string);
		
		buffer_delete(_buffer);
		
		global.game_data = json_parse(_json);
		
		
		load_room();
		
		

		//file_text_close(_file);
	}
}	
	
function load_room(){
	
	var _array = struct_get(global.game_data.room_data, room_get_name( room));
	
	
	if(_array != undefined)
	{
		instance_destroy(obj_ini)
		instance_destroy(obj_player)
			
		
		for(var i = 0;i < array_length(_array);i += 1)
		{
			var _struct = _array[ i];
			if(i == 0)
			{
				var _key = string(_struct.room)
				show_debug_message("AQUIIIIIIIIIIIIII ",_key)
				
				
			
			
			}
			else if(i == array_length(_array)-1)
			{
				instance_create_layer(_struct.x, _struct.y, "Instances", asset_get_index(_struct.object), _struct);
				global.life = _struct.life;
				global.bullets = _struct.bullets;
				global.points = _struct.points;
			
			}else{
			
			instance_create_layer(_struct.x, _struct.y, "Instances", asset_get_index(_struct.object), _struct);
			}
			
			
			
						
		}	
	}

}