if (!isDedicated) exitWith {};

params ["_sector"];
private "_sector";

if([_sector] call sectorControlRule) then {
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