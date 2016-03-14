if (!isDedicated or PRESENCE_MANAGER_RUNNING) exitWith {}

PRESENCE_MANAGER_RUNNING = true;

{
	//check if sector needs to be activated

	//check if sector needs to be contested

	//check if sector needs to change side
} forEach CTI_SECTORS;

PRESENCE_MANAGER_RUNNING = false;