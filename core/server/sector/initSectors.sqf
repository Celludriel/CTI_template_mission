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

		_markerLocation = getmarkerpos _x;
		_markerLocation setVariable ["markerName", _x, false];
		_markerLocation setVariable ["side", east, false];
		_markerLocation setVariable ["condition", "neutral", false];
		CTI_SECTOR_LOCATIONS pushback _markerLocation;
	};

} forEach allMapMarkers;

["Created %1 sectors", count CTI_SECTOR_LOCATIONS] call F_log;