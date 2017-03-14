if (!isDedicated) exitWith {};

params ["_unit"];
private ["_veh", "_grenade"];

[["Killing: %1", _unit]] call CTISHR_fnc_ctiLog;

_veh = vehicle _unit;
if (_veh != _unit) then {	
	{
		//getting rid of the frikkin gunners!
		_x assignAsDriver _veh;
		unassignVehicle _x;
		moveOut _x;
		_x setPos [0,0,0];
		deleteVehicle _x;
	} forEach crew _veh;
	_veh setDamage 1;
} else {
	_unit disableAI "MOVE";
    _grenade = "APERSTripMine_Wire_Ammo" createVehicle (getPos _unit);
	_grenade setDamage 1;
	_unit setDamage 1;
};