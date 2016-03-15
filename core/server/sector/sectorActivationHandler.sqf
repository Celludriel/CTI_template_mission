if (!isDedicated) exitWith {};

params _sector;
private "_sector";

_sectorName = _sector getVariable "markerName";
_count = [_sector, ACTIVATION_RANGE, WEST] call F_getUnitCount;
_sectorState = _sector getVariable "condition";

if(_count > 0 &&  _setctorState == 'neutral') then {
	//activate the sector
	_sector setVariable ["condition", "active", false];

	//create or update indication marker
	_indicatorName = _sectorName + "_indicator";
	if (isNil (_indicatorName)) then {
		_marker = createMarker [_indicatorName, _sector];
	};

	_marker setMarkerColor "ColorUNKNOWN";
	_marker setMarkerShape "Ellipse";
	_marker setMarkerBrush "SolidBorder";
	_marker setMarkerSize [SECTOR_RANGE, SECTOR_RANGE];

	//run any scripts related to activating a sector
	{
		[_sector] call _x;
	} forEach SECTOR_ACTIVATION_SCRIPTS;
};