if(!isDedicated) exitWith {};

call compileFinal preprocessFileLineNumbers "core\server\system\coreFunctions.sqf";

//sector init
["Start sector initiation"] call F_log;
[] call "core\server\sector\initSectors.sqf";
["core\server\sector\sectorManager.sqf"] call F_addOneSecondHearthbeat;
["End sector initiation"] call F_log;

//hearthbeat startup
["Start hearthbeats startup"] call F_log;
[] execVM "core\server\sector\system\hearthbeat\oneSecondHearthbeat.sqf";
["End hearthbeats startup"] call F_log;