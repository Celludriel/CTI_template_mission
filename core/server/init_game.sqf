if(!isDedicated) exitWith {};

call compileFinal preprocessFileLineNumbers "core\server\system\core_functions.sqf";

//sector init
["Start sector initiation"] call F_log;
[] call "core\server\sector\init_sectors.sqf";
["core\server\sector\sector_presence_manager.sqf"] call F_addOneSecondHearthbeat;
["End sector initiation"] call F_log;

//hearthbeat startup
["Start hearthbeats startup"] call F_log;
[] execVM "core\server\sector\system\hearthbeat\one_second_hearthbeat.sqf";
["End hearthbeats startup"] call F_log;