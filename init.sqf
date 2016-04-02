diag_log format ["Executing init.sqf"];

// init shared scripts
call compileFinal preprocessFileLineNumbers "core\shared\coreSharedConstants.sqf";

// init BIS group management
["Initialize"] call BIS_fnc_dynamicGroups;

// init server scripts
_handle = [] execVM "core\server\initServer.sqf";
waitUntil {isNull _handle};

// init client scripts
_handle = [] execVM "core\client\initClient.sqf";
waitUntil {isNull _handle};