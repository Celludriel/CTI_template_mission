if(!isDedicated) exitWith {};

params ["_script"];
private "_script";

POST_INIT_SERVER_SCRIPTS pushBack _script;

[["POST_INIT_SERVER_SCRIPTS: %1", POST_INIT_SERVER_SCRIPTS]] call F_log;