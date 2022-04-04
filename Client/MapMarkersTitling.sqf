// =============================================================================
// | MapMarkersTitling.sqf [1.0] 30.06.2012                                    |
// | Script adds player name to the created map marker                         |
// | by Prodavec, thanks to Gunter Severloh, PvPscene                          |
// =============================================================================

// ====================================
// | INCLUDES                         |
// ====================================

// ====================================
// | DEFINITIONS                      |
// ====================================
//#define     MMT_DEBUG

#define     MMT_DIK_ESC                 1
#define     MMT_DIK_ENTER               28
#define     MMT_DIK_KPENTER             156
#define     MMT_SEARCHTIME              2
#define     MMT_DISPLAY_MAP             12
#define     MMT_DISPLAY_MARKER          54
#define     MMT_CONTROL_MAP             51
#define     MMT_CONTROL_MARKER          101

// ====================================
// | PRE-INIT                         |
// ====================================

// ====================================
// | VARIABLES                        |
// ====================================

// ====================================
// | FUNCTIONS                        |
// ====================================
fnc_marker_keyUp_EH =
{
    private
    [
        "_handled",
        "_display",
        "_dikCode",
        "_control",
        "_text"
    ];
    _display = _this select 0;
    _dikCode = _this select 1;
    _handled = false;

    #ifdef MMT_DEBUG
        player sideChat format ["Key up: %1 | Display: %2", _dikCode, _display];
    #endif

    if ((_dikCode == MMT_DIK_ENTER) || (_dikCode == MMT_DIK_KPENTER)) then
    {
        #ifdef MMT_DEBUG
            player sideChat "ENTER pressed, adjusting control text";
        #endif

        _control = _display displayCtrl MMT_CONTROL_MARKER;
        _text = ctrlText _control;
        if (_text == "") then
        {
            _text = format ["%1", name player];
        }
        else
        {
            _text = format [" %1: %2", name player, _text];
        };
        _control ctrlSetText _text;
        _display displayRemoveAllEventHandlers "keyUp";
        _display displayRemoveAllEventHandlers "keyDown";

        #ifdef MMT_DEBUG
            player sideChat "EH uninstalled";
        #endif
    };

    _handled;
};

fnc_marker_keyDown_EH =
{
    private
    [
        "_handled",
        "_display",
        "_dikCode"
    ];
    _display = _this select 0;
    _dikCode = _this select 1;
    _handled = false;

    if (_dikCode == MMT_DIK_ESC) then
    {
        _display displayRemoveAllEventHandlers "keyUp";
        _display displayRemoveAllEventHandlers "keyDown";

        #ifdef MMT_DEBUG
            player sideChat "ESC pressed, EH uninstalled";
        #endif
    };

    _handled;
};

fnc_map_mouseButtonDblClick_EH =
{
    private
    [
        "_display"
    ];

    disableUserInput true; // Scheduled environment

    #ifdef MMT_DEBUG
        player sideChat "Entering search loop...";
    #endif

    (time + MMT_SEARCHTIME) spawn
    {
        disableSerialization;

        while {time < _this} do
        {
            _display = findDisplay MMT_DISPLAY_MARKER;
            if (!isNull _display) exitWith
            {
                
                _display displayAddEventHandler ["keyUp", "_this call fnc_marker_keyUp_EH"];
                _display displayAddEventHandler ["keyDown", "_this call fnc_marker_keyDown_EH"];

                #ifdef MMT_DEBUG
                    player sideChat "Marker EH installed";
                #endif
            };
        };
        disableUserInput false;

        #ifdef MMT_DEBUG
            player sideChat format ["Exiting search loop, delta: %1 s", (time - _this + MMT_SEARCHTIME)];
        #endif
    };
    true;
};

// ====================================
// | MAIN                             |
// ====================================
if (local player) then
{
    waitUntil {sleep 0.1; !isNull (findDisplay MMT_DISPLAY_MAP)};
    ((findDisplay MMT_DISPLAY_MAP) displayCtrl MMT_CONTROL_MAP) ctrlAddEventHandler ["mouseButtonDblClick", "call fnc_map_mouseButtonDblClick_EH"];

    #ifdef MMT_DEBUG
        player sideChat format ["Map event handler installed"];
    #endif
};