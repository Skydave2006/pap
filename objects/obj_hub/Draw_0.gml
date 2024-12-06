#region Life
x_life= obj_player.x ;
y_life = obj_player.y - 40;
if global.life = 4{
	draw_sprite(spr_vida,4,x_life,y_life)
}
if global.life = 3{
	draw_sprite(spr_vida,3,x_life,y_life)
}
if global.life = 2{
	draw_sprite(spr_vida,2,x_life,y_life)
}
if global.life = 1{
	draw_sprite(spr_vida,1,x_life,y_life)
}
if global.life = 0{
	draw_sprite(spr_vida,0,x_life,y_life)
}
#endregion

#region points
x_pts = obj_player.x-40;
y_pts = obj_player.y -80;
pts_to_string = string(global.points)

out = "Pontos:" + pts_to_string;
draw_set_font(pri_font)
draw_text(x_pts,y_pts,out);
#endregion

#region bullets
x_ammo = Obj_camera.x - 320;
y_ammo = Obj_camera.y + 360;
draw_set_font(pri_font)


if global.bullets = 5{
	draw_sprite(spr_ammo,0,x_ammo+10,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+20,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+30,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+40,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+50,y_ammo)
}
if global.bullets = 4{
	draw_sprite(spr_ammo,0,x_ammo+10,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+20,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+30,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+40,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+50,y_ammo)
}
if global.bullets = 3{
	draw_sprite(spr_ammo,0,x_ammo+10,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+20,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+30,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+40,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+50,y_ammo)
}
if global.bullets = 2{
	draw_sprite(spr_ammo,0,x_ammo+10,y_ammo)
	draw_sprite(spr_ammo,0,x_ammo+20,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+30,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+40,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+50,y_ammo)
}
if global.bullets = 1{
	draw_sprite(spr_ammo,0,x_ammo+10,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+20,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+30,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+40,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+50,y_ammo)
}
if global.bullets = 0{
	draw_sprite(spr_ammo,1,x_ammo+10,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+20,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+30,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+40,y_ammo)
	draw_sprite(spr_ammo,1,x_ammo+50,y_ammo)
}
#endregion
