if(!isDedicated) exitWith {};

while {GAME_RUNNING} do {
	sleep 1;

	{
		[] execVM _x;
	} forEach ONE_SECOND_HEARTBEATS;
};