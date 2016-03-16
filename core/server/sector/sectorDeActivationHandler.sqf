if (!isDedicated) exitWith {};

params ["_sector"];
private "_sector";

// a sector can only deactivate if it's not of the BlueFor side
_sectorSide = _sector getVariable "side";
_sectorLocation = getpos _sector;

if(_sectorSide != WEST) then {
	_count = [_sector, ACTIVATION_RANGE, WEST] call F_getUnitCount;
	_sectorState = _sector getVariable "condition";

	if(_count == 0 && _sectorState != 'neutral') then {
		//mark the sector for deactivation, the deactivation will happen later
		_sector setVariable ["condition", "deactivation", false];
		_sector setVariable ["deactivationTime", time + SECONDS_TO_DEACTIVATION, false];
	};

	_deactivationTime = _sector getVariable "deactivationTime";

	if(time >= _deactivationTime) then {
		//sector changes back to neutral
		_sector setVariable ["condition", "neutral", false];

		//any markers will be removed
		_indicatorName = [_sector] call F_createSectorIndicatorName;
		deleteMarker _indicatorName;

		//run any scripts related to deactivating a sector
		{
			[_sector] execVM _x;
		} forEach SECTOR_DEACTIVATION_SCRIPTS;
	};

};