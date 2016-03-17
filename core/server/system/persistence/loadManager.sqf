if(!isDedicated) exitWith {};

_ctiSaveGame = profileNamespace getVariable SAVEGAME_NAME;

if ( !isNil "_ctiSaveGame" ) then {
	_ctiSectorObjectData = _ctiSaveGame select 0;

	{
		_markerName = _x select 0;
		_side = _x select 1;
		_condition = _x select 2;

		_markerLocation = getmarkerpos _markerName;
		_invisibleSectorObject = [_markerLocation] call F_spawnInvisibleObject;
		_invisibleSectorObject setVariable ["markerName", _markerName, false];
		_invisibleSectorObject setVariable ["side", _side, false];
		_invisibleSectorObject setVariable ["condition", _condition, false];

		CTI_SECTOR_OBJECTS pushback _invisibleSectorObject;
	} forEach _ctiSectorObjectData;

	[LOAD_SCRIPTS, [_ctiSaveGame]] call F_runArrayOfScriptsUnsynced;
};