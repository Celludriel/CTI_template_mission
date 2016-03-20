if(!isDedicated) exitWith {};

[["Loading server core functions"]] call F_log;

//extention scripts
F_addOneSecondHearthbeatScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addOneSecondHearthbeatScript.sqf";
F_addFiveMinuteHearthbeatScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addFiveMinuteHearthbeatScript.sqf";
F_addSectorActivationScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addSectorActivationScript.sqf";
F_addSectorDeActivationScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addSectorDeActivationScript.sqf";
F_addSectorContestedScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addSectorContestedScript.sqf";
F_addSectorCreatedScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addSectorCreatedScript.sqf";
F_addSectorLoadedScript = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_addSectorLoadedScript.sqf";

//sector scripts
F_createSectorIndicatorName = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_createSectorIndicatorName.sqf";
F_setIndicatorMarker = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_setIndicatorMarker.sqf";
F_deleteIndicatorMarker = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_deleteIndicatorMarker.sqf";
F_createOrUpdateIndicationMarker = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_createOrUpdateIndicationMarker.sqf";
F_spawnInvisibleObject = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_spawnInvisibleObject.sqf";
F_getIconTypeForSector = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_getIconTypeForSector.sqf";

//persistance scripts
F_storeDataBlockInSaveContainer = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_storeDataBlockInSaveContainer.sqf";
F_loadDataBlockInSaveContainer = compileFinal preprocessFileLineNumbers "core\server\system\functions\F_loadDataBlockInSaveContainer.sqf";

[["Loaded server core functions"]] call F_log;