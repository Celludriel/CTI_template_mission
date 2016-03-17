if(!isDedicated) exitWith {};

_ctiSaveGame = [];
_ctiSectorObjectData = [];

{
	_sectorData = [];
	_sectorData pushBack getVariable "markerName";
	_sectorData pushBack getVariable "side";
	_sectorData pushBack getVariable "condition";
	_ctiSectorObjectData pushBack _sectorData;
} forEach CTI_SECTOR_OBJECTS;

_ctiSaveGame pushBack _ctiSectorObjectData;

[SAVE_SCRIPTS, [_ctiSaveGame]] call F_runArrayOfScriptsUnsynced;

profileNamespace setVariable [ SAVEGAME_NAME, _ctiSaveGame];
saveProfileNamespace;