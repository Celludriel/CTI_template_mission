if(!isDedicated) exitWith {};

{
  private "_currentMarker";
  _currentMarker = toArray _x;
  _currentMarker resize 8;

	[["Processing map marker %1", _x]] call F_log;

  if ( toString _currentMarker == "sec_town" ) then {
		_x setMarkerType "ICON";
		_x setMarkerShape "n_art";
		_x setMarkerColor "ColorOPFOR";

		_markerLocation = getmarkerpos _x;
		_invisibleSectorObject = [_markerLocation] call F_spawnInvisibleObject;
		_invisibleSectorObject setVariable ["markerName", _x, false];
		_invisibleSectorObject setVariable ["side", east, false];
		_invisibleSectorObject setVariable ["condition", "neutral", false];

		CTI_SECTOR_LOCATIONS pushback _invisibleSectorObject;
	};

} forEach allMapMarkers;

[["Created %1 sectors", count CTI_SECTOR_LOCATIONS]] call F_log;