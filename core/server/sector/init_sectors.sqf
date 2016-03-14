if(!isDedicated) exitWith {};

{
  private "_currentMarker";
  _currentMarker = toArray _x;
  _currentMarker resize 8;

	["Processing map marker %1", toString _currentMarker] call F_log;

  if ( toString _currentMarker == "sec_town" ) then {
		_x setMarkerType "ICON";
		_x setMarkerShape "n_art";
		_x setMarkerColor "ColorOPFOR";
		CTI_SECTORS pushback _x;
	};

} forEach allMapMarkers;

["Created %1 sectors", count CTI_SECTORS] call F_log;