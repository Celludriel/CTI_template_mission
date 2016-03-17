if (!isDedicated) exitWith {};

params ["_sector"];
private "_sector";

// a sector can only activate if it's not of the BlueFor side
_sectorSide = _sector getVariable "side";

if(_sectorSide != WEST) then {
	_count = [_sector, ACTIVATION_RANGE, WEST] call F_getUnitCount;
	_sectorState = _sector getVariable "condition";

	if(_count > 0 && _sectorState == 'neutral') then {
		//activate the sector
		_sector setVariable ["condition", "active", false];

		//create or update indication marker
		[_sector, "ColorUNKOWN", SECTOR_RANGE] call F_createOrUpdateIndicationMarker;

		//run any scripts related to activating a sector
		[SECTOR_ACTIVATION_SCRIPTS, [_sector]] call F_runArrayOfScriptsUnsynced;
	};

	if(_count > 0 && _sectorState == 'deactivation') then {
		//reactivate the sector but nothing more needs to happen
		_sector setVariable ["condition", "active", false];
	};

	if(_sectorState == 'contested') then {
		_sectorCount = [_sector, SECTOR_RANGE, WEST] call F_getUnitCount;
		if(_sectorCount == 0) then {
			//reactivate the sector and change the color of the marker
			_sector setVariable ["condition", "active", false];
			[_sector, "ColorUNKOWN", SECTOR_RANGE] call F_createOrUpdateIndicationMarker;
		};
	};
};