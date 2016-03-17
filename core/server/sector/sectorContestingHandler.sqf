if (!isDedicated) exitWith {};

params ["_sector"];
private "_sector";

// a sector can only contested if it's not of the BlueFor side
_sectorSide = _sector getVariable "side";
_sectorLocation = getpos _sector;

if(_sectorSide != WEST) then {
	_blueForCount = [_sector, SECTOR_RANGE, WEST] call F_getUnitCount;
	_opForCount = [_sector, SECTOR_RANGE, EAST] call F_getUnitCount;
	_sectorState = _sector getVariable "condition";

	if(_opForCount > 0 && _blueForCount > 0) then {
		//contest the sector
		_sector setVariable ["condition", "contested", false];

		//create or update indication marker
		[_sector, "ColorOPFOR", SECTOR_RANGE] call F_createOrUpdateIndicationMarker;

		//run any scripts related to contesting a sector
		[SECTOR_CONTESTED_SCRIPTS, [_sector]] call F_runArrayOfScriptsUnsynced;
	};
};