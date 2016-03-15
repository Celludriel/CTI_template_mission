if(!isDedicated) exitWith {};

F_addOneSecondHearthbeatScript = call compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addOneSecondHearthbeatScript.sqf";
F_addSectorActivationScript = call compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addSectorActivationScript.sqf";
F_createSectorIndicatorName = call compileFinal preprocessFileLineNumbers "core\server\system\functions\F_createSectorIndicatorName.sqf";
F_setIndicatorMarker = call compileFinal preprocessFileLineNumbers "core\server\system\functions\F_setIndicatorMarker.sqf";