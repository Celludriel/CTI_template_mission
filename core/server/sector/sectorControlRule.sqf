if (!isDedicated) exitWith {};

params ["_sector"];
private "_sector";

_blueForCount = [_sector, SECTOR_RANGE, WEST] call F_getUnitCount;
_opForCount = [_sector, SECTOR_RANGE, EAST] call F_getUnitCount;
_sectorState = _sector getVariable "condition";

[["West: %1, East: %2, sectorStatus: %3", _blueForCount, _opForCount, _sectorState]] call F_log;

_blueForCount > 0 && _opForCount == 0 && _sectorState == "contested"