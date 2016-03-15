if(!isDedicated) exitWith {};

[["Loading server core functions"]] call F_log;

F_addOneSecondHearthbeatScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addOneSecondHearthbeatScript.sqf";
F_addSectorActivationScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addSectorActivationScript.sqf";
F_createSectorIndicatorName = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_createSectorIndicatorName.sqf";
F_setIndicatorMarker = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_setIndicatorMarker.sqf";
F_spawnInvisibleObject = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_spawnInvisibleObject.sqf";

[["Loaded server core functions"]] call F_log;