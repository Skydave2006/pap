spd = 5;
hspd = 0;
vspd = 0;
grv = 0.4;
global.bullets = 5;
global.life = 4;
global.points = 0;
window_set_fullscreen(true);

state = STATES.FREE;

enum STATES{
	FREE,
	FREEZE,
	FLY

}
