diag_log format ["Executing init.sqf"];

call compileFinal preprocessFileLineNumbers "core\shared\core_constants.sqf";
call compileFinal preprocessFileLineNumbers "core\shared\core_functions.sqf";

["Testing log function %1", "working"] call F_log;