if(!isDedicated) exitWith {};

_ctiSaveGame = [];
_ctiSaveGame pushBack CTI_SECTOR_OBJECTS;

[SAVE_SCRIPTS, [_ctiSaveGame]] call F_runArrayOfScriptsUnsynced;

profileNamespace setVariable [ SAVEGAME_NAME, _ctiSaveGame];
saveProfileNamespace;