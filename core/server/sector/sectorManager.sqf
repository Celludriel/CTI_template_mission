if (!isDedicated or PRESENCE_MANAGER_RUNNING) exitWith {};

PRESENCE_MANAGER_RUNNING = true;

{
	//check if a sector needs to be deactivated
	_handle = [_x] execVM "core\server\sector\sectorDeActivationHandler.sqf";
	waitUntil {isNull _handle};

	//check if sector needs to be activated
	_handle = [_x] execVM "core\server\sector\sectorActivationHandler.sqf";
	waitUntil {isNull _handle};

	//check if sector needs to be contested
	_handle = [_x] execVM "core\server\sector\sectorContestingHandler.sqf";
	waitUntil {isNull _handle};

	//check if sector needs to change side
	_handle = [_x] execVM "core\server\sector\sectorControlHandler.sqf";
	waitUntil {isNull _handle};
} forEach CTI_SECTOR_OBJECTS;

PRESENCE_MANAGER_RUNNING = false;