if (!isDedicated) exitWith {};

params ["_sector"];
private "_sector";

// a sector can only activate if it's not of the BlueFor side
_sectorSide = _sector getVariable "side";

if(_sectorSide != WEST) then {
	_count = [_sector, ACTIVATION_RANGE, WEST] call F_getUnitCount;
	_sectorState = _sector getVariable "condition";

	if(_count > 0 &&  _sectorState == 'neutral') then {
		//activate the sector
		_sector setVariable ["condition", "active", false];

		//create or update indication marker
		_indicatorName = [_sector] call F_createSectorIndicatorName;
		if (isNil (_indicatorName)) then {
			_marker = createMarker [_indicatorName, _sector];
		};

		[_marker, "ColorUNKNOWN", SECTOR_RANGE] call F_setIndicatorMarker;

		//run any scripts related to activating a sector
		{
			[_sector] call _x;
		} forEach SECTOR_ACTIVATION_SCRIPTS;
	};
};