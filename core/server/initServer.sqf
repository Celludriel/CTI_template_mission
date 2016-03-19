if(!isDedicated) exitWith {};

//load all server core functions
call compileFinal preprocessFileLineNumbers "core\server\coreFunctions.sqf";

//load all server rules
sectorControlRule = compileFinal preprocessFileLineNumbers SECTOR_CONTROL_RULE_SCRIPT;

//load any previous save
_handle = [] execVM "core\server\system\persistence\loadManager.sqf";
waitUntil {isNull _handle};

//sector init
[["Start sector initiation"]] call F_log;
_handle = [] execVM "core\server\sector\initSectors.sqf";
waitUntil {isNull _handle};

["core\server\gameManager.sqf"] call F_addOneSecondHearthbeatScript;
[["End sector initiation"]] call F_log;

//autosave init
["core\server\system\persistence\saveManager.sqf"] call F_addFiveMinuteHearthbeatScript;

//hearthbeat startup
[["Start hearthbeats startup"]] call F_log;
[] execVM "core\server\system\hearthbeat\oneSecondHearthbeat.sqf";
[] execVM "core\server\system\hearthbeat\fiveMinuteHearthbeat.sqf";
[["End hearthbeats startup"]] call F_log;