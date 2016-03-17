if(!isDedicated) exitWith {};

call compileFinal preprocessFileLineNumbers "core\server\coreFunctions.sqf";

//load any previous save
_handle = [] execVM "core\server\persistence\loadManager.sqf";
waitUntil {isNull _handle};

//sector init
[["Start sector initiation"]] call F_log;
_handle = [] execVM "core\server\sector\initSectors.sqf";
waitUntil {isNull _handle};

["core\server\sector\sectorManager.sqf"] call F_addOneSecondHearthbeatScript;
[["End sector initiation"]] call F_log;

//hearthbeat startup
[["Start hearthbeats startup"]] call F_log;
[] execVM "core\server\system\hearthbeat\oneSecondHearthbeat.sqf";
[["End hearthbeats startup"]] call F_log;