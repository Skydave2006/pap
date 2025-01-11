

global.bullets = 5;
global.life = 4;
global.points = 0;



window_set_fullscreen(true);
window_set_cursor(cr_none);

state = STATES.FREE;

enum STATES{
	FREE,
	FREEZE,
	FLY,
	DEAD
		
}

if state == STATES.FREE
{
	sprite_index = player;
	str_state = "FREE";

}


if state == STATES.FREEZE
{
	
	str_state = "FREEZE";

}
if state == STATES.FLY
{
	str_state = "FLY";
}
if state == STATES.DEAD
{
	str_state = "DEAD";

}
