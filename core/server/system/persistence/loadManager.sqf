if(!isDedicated) exitWith {};

_ctiSaveGame = profileNamespace getVariable SAVEGAME_NAME;

if ( !isNil "_ctiSaveGame" ) then {
	CTI_SECTOR_OBJECTS = ctiSaveGame select 0;

	[LOAD_SCRIPTS, [_ctiSaveGame]] call F_runArrayOfScriptsUnsynced;
};