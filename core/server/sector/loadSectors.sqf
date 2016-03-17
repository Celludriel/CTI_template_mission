if(!isDedicated) exitWith {};

{
	_marker = _x getVariable "markerName";
	_side = _x getVariable "side";

	[["Processing marker %1 of side %2", _marker, _side]] call F_log;
  _currentMarker = toArray _marker;
  _currentMarker resize 8;

  if ( toString _currentMarker == "sec_town" ) then {
		_marker setMarkerType "n_art";
		_marker setMarkerShape "ICON";

		if(_side == west) then {
			_marker setMarkerColor "ColorBLUFOR";
		}else{
			_marker setMarkerColor "ColorOPFOR";
		};
	};

} forEach CTI_SECTOR_OBJECTS;

[["Loaded %1 sectors", count CTI_SECTOR_OBJECTS]] call F_log;