diag_log format ["Executing init.sqf"];

// init shared scripts
call compileFinal preprocessFileLineNumbers "core\shared\coreConstants.sqf";
call compileFinal preprocessFileLineNumbers "core\shared\coreFunctions.sqf";
	// check if logging is working
	[["Logging activated"]] call F_log;

// init server scripts
[] execVM "core\server\initGame.sqf";