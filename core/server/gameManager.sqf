if (!isDedicated or PRESENCE_MANAGER_RUNNING) exitWith {};

PRESENCE_MANAGER_RUNNING = true;

_allSectorsBLUFOR = true;
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

	if(_x getVariable "side" == east) then {
		_allSectorsBLUFOR = false;
	};
} forEach CTI_SECTOR_OBJECTS;

if(_allSectorsBLUFOR) then {
	//stop the hearthbeat scripts
	GAME_RUNNING = false;
	//clear the savegame so next mission will start clean
	profileNamespace setVariable [SAVEGAME_NAME, nil];
	saveProfileNamespace;
	//end the mission
	["end1", true, true] call BIS_fnc_endMission;
};

PRESENCE_MANAGER_RUNNING = false;