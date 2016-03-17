if (!isDedicated) exitWith {};

params ["_sector"];
private "_sector";

_blueForCount = [_sector, SECTOR_RANGE, WEST] call F_getUnitCount;
_opForCount = [_sector, SECTOR_RANGE, EAST] call F_getUnitCount;
_sectorState = _sector getVariable "condition";

[["West: %1, East: %2, sectorStatus: %3", _blueForCount, _opForCount, _sectorState]] call F_log;

if(_blueForCount > 0 && _opForCount == 0 && _sectorState == "contested") then {
	// Change sides of sector and turn neutral again
	_sector setVariable ["side", west, false];
	_sector setVariable ["condition", "neutral", false];

	// Turn sector marker to BlueFor colors
	_marker = _sector getVariable "markerName";
	_marker setMarkerColor "ColorBLUFOR";

	// Remove indication marker
	[_sector] call F_deleteIndicatorMarker;

	// Run all scripts pertaining sector control change
	[SECTOR_CONTROL_CHANGE_SCRIPTS, [_sector]] call F_runArrayOfScriptsUnsynced;
};