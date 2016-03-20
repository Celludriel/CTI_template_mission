// System constants
DEBUG_ENABLED = true;
GAME_RUNNING = true;
SAVE_LOCK = false;
SAVEGAME_NAME = "CTI_TEMPLATE";
CTI_SECTOR_OBJECTS = [];

// Expantion scripts
// server
SECTOR_ACTIVATION_SCRIPTS = [];
SECTOR_DEACTIVATION_SCRIPTS = [];
SECTOR_CONTESTED_SCRIPTS = [];
SECTOR_CONTROL_CHANGE_SCRIPTS = [];
SAVE_SCRIPTS = [];
LOAD_SCRIPTS = [];
SECTOR_LOADED_SCRIPTS = [];
SECTOR_CREATED_SCRIPTS = [];
ONE_SECOND_HEARTBEATS = [];
FIVE_MINUTE_HEARTHBEATS = [];
// client
RESPAWN_SCRIPTS = [];

// Sector specific
ACTIVATION_RANGE = 500;
SECTOR_RANGE = 300;
PRESENCE_MANAGER_RUNNING = false;
SECONDS_TO_DEACTIVATION = 60;
SECTOR_TYPES = [["sec_town", "n_art"],["sec_fuel", "loc_Fuelstation"],["sec_base", "o_uav"],["sec_towr", "loc_Transmitter"]];
SECTOR_CONTROL_RULE_SCRIPT = "core\server\sector\sectorControlRule.sqf";

call compileFinal preprocessFileLineNumbers "custom\override\coreSettingOverride.sqf";