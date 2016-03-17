diag_log format ["Executing init.sqf"];

// init shared scripts
call compileFinal preprocessFileLineNumbers "core\shared\coreConstants.sqf";
call compileFinal preprocessFileLineNumbers "core\shared\coreFunctions.sqf";

// init server scripts
[] execVM "core\server\initGame.sqf";