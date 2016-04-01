diag_log format ["Executing init.sqf"];

// init shared scripts
call compileFinal preprocessFileLineNumbers "core\shared\coreSharedConstants.sqf";

// init server scripts
_handle = [] execVM "core\server\initServer.sqf";
waitUntil {isNull _handle};

// init client scripts
_handle = [] execVM "core\client\initClient.sqf";
waitUntil {isNull _handle};