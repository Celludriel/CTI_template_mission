if(!isDedicated) exitWith {};

params [ "_marker", "_color", "_range" ];

_marker setMarkerColor _color;
_marker setMarkerShape "Ellipse";
_marker setMarkerBrush "SolidBorder";
_marker setMarkerSize [_range, _range];