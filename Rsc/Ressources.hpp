/* Controls Definitions */

#define CT_STATIC 			0
#define CT_EDIT             2
#define CT_BUTTON 			1
#define CT_COMBO 			4 
#define CT_LISTBOX 			5
#define CT_CLICKABLETEXT	11
#define CT_STRUCTUREDTEXT	13
#define CT_CONTROLS_GROUP	15
#define CT_LISTNBOX 		102

#define ST_POS 				0x0F
#define ST_HPOS 			0x03
#define ST_VPOS 			0x0C
#define ST_LEFT 			0x00
#define ST_RIGHT 			0x01
#define ST_CENTER 			0x02
#define ST_DOWN 			0x04
#define ST_UP				0x08
#define ST_VCENTER 			0x0c

#define ENABLE_SHADOW 		shadow = 2

#define ST_PICTURE 			48
#define ST_TEXT_BG 			128


#ifdef VANILLA
	/* Green */
	#define subcolor1 {0.7,1,0.7,1}
	#define subcolor1hex "#eee58b"
	#define WFBE_SoundClick "ui\ui_ok"
	#define WFBE_SoundEnter "ui\ui_over"
	#define WFBE_SoundEscape "ui\ui_cc"
#else
	/* Yellow */
	#define subcolor1 {1,1,0.7,1}
	#define subcolor1hex "#eee58b"
	#define WFBE_SoundClick "\ca\ui\data\sound\onclick"
	#define WFBE_SoundEnter "\ca\ui\data\sound\onover"
	#define WFBE_SoundEscape "\ca\ui\data\sound\onescape"
#endif

/*
/* HUD FRAME 
class RscFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {0,0,0,0.518};
	colorText[] = {1,1,1,1};
	font = "Zeppelin32";
	sizeEx = 0.02;
	text = "";
};
*/
/* RscPicture */
class RscControlsGroup {
	type = CT_CONTROLS_GROUP;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = ST_MULTI;
	class VScrollbar {
		width = 0.021;
		autoScrollSpeed = -1;
		autoScrollDelay = 5;
		autoScrollRewind = 0;
		shadow = 0;
		color[] = {1,1,1,0.6};
	};
	class HScrollbar {
		height = 0.028;
		shadow = 0;
		color[] = {1,1,1,0.6};
	};
	class ScrollBar	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
		border = "#(argb,8,8,3)color(1,1,1,1)";
	};
	class Controls{
	
	};
};
class RscPicture {
	type = 0;
	idc = -2;
	style = 48;
	colorText[] = {0.75, 0.75, 0.75, 1};
	colorBackground[] = {0, 0, 0, 0};
	font = "Bitstream";
	sizeEx = 0.025;
	soundClick[] = {WFBE_SoundClick, 0.2, 1};
	soundEnter[] = {WFBE_SoundEnter, 0.2, 1};
	soundEscape[] = {WFBE_SoundEscape, 0.2, 1};
	soundPush[] = {"", 0.2, 1};
	w = 0.275;
	h = 0.04;
	text = "";
};
class RscPictureKeepAspect : RscPicture { //Coin Menu
	style = 0x30 + 0x800;
};

class IGUIBack { //Coin Menu
	type = CT_STATIC;
	idc = 124;
	style = ST_TEXT_BG;
	text = "";
	colorText[] = {0, 0, 0, 0};
	font = "Zeppelin33";
	sizeEx = 0.0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = {0, 0, 0, 0.6};
};

/* RscButton */
class RscButton {
	type = 1;
	idc = -2;
	style = 0x02 + 0x100;
	x = 0;
	y = 0;
	w = 0;
	h = 0.036;
	text = "";
	font = "Zeppelin33";
	sizeEx = 0.028;
	shadow = 2;
	colorText[] = {1, 1, 1, 0.9};
	colorBackground[] = {0.4, 0.5882, 0.3529, 0.7};
	colorBackgroundActive[] = {0.7, 0.6882, 0.3529, 1};
	colorDisabled[] = {0.5, 0.5, 0.5, 0.8};
	colorFocused[] = {0.5882, 0.6882, 0.3529, 0.7};
	colorBackgroundDisabled[] = {0, 0, 0, 0.6};
	
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	
	colorShadow[] = {0.023529, 0, 0.0313725, 1};
	colorBorder[] = {0.023529, 0, 0.0313725, 1};
	borderSize = 0.0;
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.09, 1};
};
class RscButton_Back : RscButton {
	w = 0.04;
	h = 0.04;
	text = "<<";
	shadow = 2;
	sizeEx = 0.030;
};
class RscButton_Exit : RscButton {
	w = 0.035;
	h = 0.035;
	text = "X";
	shadow = 2;
	sizeEx = 0.030;
	colorText[] = {1, 1, 1, 0.8};
	colorBackground[] = {0.5020, 0, 0, 1};
	colorBackgroundActive[] = {0.9, 0, 0, 1};
	colorFocused[] = {0.5020, 0, 0, 1};
};
class RSCTextBox { 
idc = -2; 
type = CT_EDIT; 
style = ST_LEFT; 
h = 0.2;
colorBackground[] = WFBE_SPC1;
colorText[] = {1, 1, 1, 1};
font = BitStream;
sizeEx = 0.02;
colorSelection[] = WFBE_SPC1;
autocomplete = false;
};
class RscFrame
{
type = CT_STATIC;
idc = -1;
style = 64;
shadow = 2;
colorBackground[] = {0,0,0,-0};
colorText[] = {1,1,1,1};
font = "Zeppelin32";
sizeEx = 0.02;
text = "";
};
/* RscShortcutButton */
class RscShortcutButton {
	type = 16;
	idc = -2;
	style = 0;
	default = 0;
	w = 0.183825;
	h = 0.104575;
	color[] = {0.4, 0.7742, 0.4, 1.0};
	color2[] = {0.95, 0.95, 0.95, 1};
	colorBackground[] = {1, 1, 1, 1};
	colorbackground2[] = {1, 1, 1, 0.4};
	colorDisabled[] = {1, 1, 1, 0.25};
	periodFocus = 1.2;
	periodOver = 0.8;
	class HitZone {
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};
	class ShortcutPos {
		left = 0.004;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos {
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	textureNoShortcut = "";
	period = 0.4;
	font = "Zeppelin33";
	size = 0.028;
	sizeEx = 0.03521;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.09, 1};
	action = "";
	class Attributes {
		font = "Zeppelin33";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	class AttributesImage {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
	};
};
class RscIGUIShortcutButton : RscShortcutButton {
	w = 0.183825;
	h = 0.0522876;
	style = 2;
	color[] = {1, 1, 1, 1};
	color2[] = {1, 1, 1, 0.85};
	colorBackground[] = {1, 1, 1, 1};
	colorbackground2[] = {1, 1, 1, 0.85};
	colorDisabled[] = {1, 1, 1, 0.4};
	class HitZone {
		left = 0.002;
		top = 0.003;
		right = 0.002;
		bottom = 0.016;
	};
	class ShortcutPos {
		left = -0.006;
		top = -0.007;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos {
		left = 0.02;
		top = 0.0;
		right = 0.002;
		bottom = 0.016;
	};
	animTextureNormal = "\ca\ui\data\igui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\igui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\igui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\igui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\igui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\igui_button_normal_ca.paa";
	class Attributes {
		font = "Zeppelin33";
		color = "#d7dbb9";
		align = "center";
		shadow = "true";
	};
};
class RscShortcutButtonMain: RscShortcutButton {
	w = 0.313726;
	h = 0.104575;
	color[] = {0.90, 0.95, 0.77, 1};
	colorDisabled[] = {0.55, 0.55, 0.55, 0.25};
	class HitZone {
		left = 0.0;
		top = 0.0;
		right = 0.0;
		bottom = 0.0;
	};
	class ShortcutPos {
		left = 0.0204;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos {
		left = 0.08;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	animTextureNormal = "\ca\ui\data\ui_button_main_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_main_disabled_ca.paa";
	//animTextureOver = "\ca\ui\data\ui_button_main_over_ca.paa";
	animTextureOver = "Client\Images\ui_button_main_over.paa";
	//animTextureFocused = "\ca\ui\data\ui_button_main_focus_ca.paa";
	animTextureFocused = "Client\Images\ui_button_main_focus.paa";
	//animTexturePressed = "\ca\ui\data\ui_button_main_down_ca.paa";
	animTexturePressed = "Client\Images\ui_button_main_down.paa";
	animTextureDefault = "\ca\ui\data\ui_button_main_normal_ca.paa";
	period = 0.5;
	font = "Zeppelin33";
	size = 0.03221;
	sizeEx = 0.03921;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.09, 1};
	action = "";
	class Attributes {
		font = "Zeppelin33";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class AttributesImage {
		font = "Zeppelin33";
		color = "#E5E5E5";
		align = "false";
	};
};

/* RscListBox */
class RscListBox {
	idc = -2;
	type = 5;
	style = 0 + 0x10;
	font = "Zeppelin33";
	sizeEx = 0.03321;
	color[] = {0.2588, 0.7137, 1, 1};
	colorText[] = {1, 1, 1, 0.75};
	colorScrollbar[] = {0.95, 0, 0, 1};
	colorSelect[] = {0, 0, 0, 0.7};
	colorSelect2[] = {0, 0, 0, 0.7};
	colorSelectBackground[] = {0.2588, 0.7137, 1, 1};
	colorSelectBackground2[] = {0.2588, 0.7137, 1, 1};
	columns[] = {0.1, 0.7, 0.1, 0.1};
	period = 0;
	colorBackground[] = {0, 0, 0, 1};
	maxHistoryDelay = 1.0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	soundSelect[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\ca\ui\data\igui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\igui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\igui_arrow_top_ca.paa";
		border = "\ca\ui\data\igui_border_scroll_ca.paa";
	};
};
class RscListnBox : RscListBox {
	type = 102;
	lineSpacing = 1;
	sizeEx = 0.029;
	rowHeight = 0.03;
	style = 16;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	idcRight = -1;
	idcLeft = -1;
	drawSideArrows = 0;
};
class RscListBoxA : RscListBox {
	type = 102;
	lineSpacing = 1;
	sizeEx = 0.03;
	rowHeight = 0.03;
	style = 16;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
};

/* RscText */
class RscText {
	idc = -2;
	type = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0;
	style = 256;
	font = "Zeppelin33";
	text = "";
	sizeEx = 0.025;
	shadow = 2;
	colorText[] = {0.9333, 0.8980, 0.5451, 0.9};
	colorBackground[] = {0, 0, 0, 0};
};

class RscText_Title : RscText {
	h = 0.04;
	colorText[] = {0.2588, 0.7137, 1, 1};
	sizeEx = 0.035;
	shadow = 1;
};
class RscText_SubTitle : RscText {
	h = 0.04;
	colorText[] = {0.2588, 0.7137, 1, 0.9};
	sizeEx = 0.033;
	shadow = 1;
};
class RscText_Small : RscText {
	h = 0.037;
	colorText[] = {0.9333, 0.8980, 0.5451, 0.9};
	sizeEx = 0.022;
	shadow = 2;
};

/* RscStructuredText */
class RscStructuredText {
	type = 13;
	idc = -2;
	style = 0;
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = 0.03021;
	colorText[] = subcolor1;
	class Attributes {
		font = "Zeppelin33";
		color = subcolor1hex;
		align = "left";
		shadow = true;
	};
};
/* RscStructuredTextB for valhalla hud */
class RscStructuredTextB{
	type=13;
	idc=-1;
	style = 0;
	sizeEx=0.026;
	size=0.02;
	lineSpacing=1;
	colorbackground[]={0,0.0,0,0};
	colorText[]={1,1,1,1};
	text="";
	x=-1;
	y=-1;
	w=0;
	h=0;
	class Attributes
	{
		font="Zeppelin33";
		color="#ffffff";
		align="left";
		shadow=false;
	};
};
class RscStructuredTextC{
	type=13;
	idc=-1;
	style = 0;
	sizeEx=0.027;
	size=0.02;
	lineSpacing=1;
	colorbackground[]={0,0.0,0,0};
	colorText[]={1,1,1,1};
	text="";
	x=-1;
	y=-1;
	w=0;
	h=0;
	class Attributes
	{
		font="Zeppelin32";
		color="#ffffff";
		align="left";
		shadow=false;
	};
};

/* RscXSliderH */
class RscXSliderH {
	idc = -2;
	type = 43;
	style = 0x400  + 0x10;
	x = 0;
	y = 0;
	h = 0.029412;
	w = 0.4;
	color[] = {1, 1, 1, 0.5};
	colorActive[] = {1, 1, 0, 1};
	colorDisabled[] = {0.55, 0.55, 0.55, 0.25};
	arrowEmpty = "\ca\ui\data\ui_arrow_left_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_left_active_ca.paa";
	border = "\ca\ui\data\ui_border_frame_ca.paa";
	thumb = "\ca\ui\data\ui_slider_bar_ca.paa";
};

/* RscCombo */
class RscCombo {
	idc = -2;
	type = 4;
	style = 1;
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.035;
	colorSelect[] = {0, 0, 0, 0.7};
	colorText[] = {1, 1, 1, 0.75};
	colorBackground[] = {0,0,0,0.75};
	colorSelectBackground[] = {0.2588, 0.7137, 1, 1};
	colorScrollbar[] = {0.023529, 0, 0.0313725, 1};
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	color[] = {0.2588, 0.7137, 1, 1};
	colorActive[] = {0, 0, 0, 1};
	colorDisabled[] = {0, 0, 0, 0.3};
	font = "Zeppelin33";
	sizeEx = 0.028;
	soundSelect[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundExpand[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundCollapse[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	maxHistoryDelay = 1.0;
	class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};

/* RscClickableText */
class RscClickableText {
	idc = -2;
	type = 11;
	style = 48 + 0x800;
	color[] = {0.75,0.75,0.75,1};
	colorActive[] = {1,1,1,1};
	colorBackground[] = {0.6, 0.8392, 0, 1};
	colorBackgroundSelected[] = {0.6, 0.8392, 0, 1};
	colorFocused[] = {0.0, 0.0, 0.0, 0};
	font = "Zeppelin33";
	sizeEx = 0.03321;
	soundClick[] = {WFBE_SoundClick,0.2,1};
	soundDoubleClick[] = {"", 0.1, 1};
	soundEnter[] = {WFBE_SoundEnter,0.2,1};
	soundEscape[] = {WFBE_SoundEscape,0.2,1};
	soundPush[] = {, 0.2, 1};
	w = 0.275;
	h = 0.04;
	text = "";
};

/* RscMapControl */
class RscMapControl {
	type = 101;
	moveOnEdges = 1;
	sizeEx = 0.043;
	style = 48;
	colorBackground[] = {1, 1, 1, 1};
	colorText[] = {0, 0, 0, 1};
	font = "EtelkaNarrowMediumPro";
	//font = "TahomaB";
	//sizeEx = 0.04;
	colorSea[] = {0.56, 0.8, 0.98, 0.5};
	colorForest[] = {0.5, 0.7, 0.2, 0.2};
	colorRocks[] = {0.85, 0.0, 0.0, 0.3};
	colorCountlines[] = {0.65, 0.45, 0.27, 0.5};
	colorMainCountlines[] = {0.65, 0.45, 0.27, 1};
	colorCountlinesWater[] = {0, 0.53, 1, 0.5};
	colorMainCountlinesWater[] = {0, 0.53, 1, 1};
	colorForestBorder[] = {0, 0.85, 0, 0.5};
	colorRocksBorder[] = {0.7, 0.0, 0.0, 1};
	colorPowerLines[] = {0, 0, 0, 1};
	colorNames[] = {0, 0, 0, 1};
	colorInactive[] = {1, 1, 1, 0.5};
	colorLevels[] = {0.9, 0.65, 0, 0.71};
	
	colorOutside[] = { 1, 1, 0, 1};		
	colorRailWay[] = { 0 , 0, 0.5, 1};
	maxSatelliteAlpha = 1;
	alphaFadeStartScale = 1;
	alphaFadeEndScale = 2;
			
	fontLabel = "Zeppelin32";
	sizeExLabel = 0.030;
	fontGrid = "Zeppelin32";
	sizeExGrid = 0.030;
	fontUnits = "Zeppelin32";
	sizeExUnits = 0.030;
	fontNames = "Zeppelin32";
	sizeExNames = 0.044;
	fontInfo = "Zeppelin32";
	sizeExInfo = 0.030;
	fontLevel = "Zeppelin32";
	sizeExLevel = 0.020;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	stickX[] = {0.2, {"Gamma", 1, 1.5}};
	stickY[] = {0.2, {"Gamma", 1, 1.5}};
	ptsPerSquareSea = 6;
	ptsPerSquareTxt = 8;
	ptsPerSquareCLn = 8;
	ptsPerSquareExp = 8;
	ptsPerSquareCost = 8;
	ptsPerSquareFor = "4.0f";
	ptsPerSquareForEdge = "10.0f";
	ptsPerSquareRoad = 2;
	ptsPerSquareObj = 10;
    showCountourInterval = "false";

	class Command {
					icon = "#(argb,8,8,3)color(1,1,1,1)";
					color[] = {0, 0, 0, 1};
					size = 18;
					importance = 1;
					coefMin = 1;
					coefMax = 1;
				};
	
	class Bunker {
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 1.5 * 14 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Bush {
		icon = "\ca\ui\data\map_bush_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 0.2 * 14 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class BusStop {
		icon = "\ca\ui\data\map_busstop_ca.paa";
		color[] = {0, 0, 1, 1};
		size = 10;
		importance = 1 * 10 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Cross {
		icon = "\ca\ui\data\map_cross_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 0.7 * 16 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Task {
		icon = "\ca\ui\data\ui_taskstate_current_CA.paa";
		iconCreated = "\ca\ui\data\ui_taskstate_new_CA.paa";
		iconCanceled = "#(argb,8,8,3)color(0,0,0,0)";
		iconDone = "\ca\ui\data\ui_taskstate_done_CA.paa";
		iconFailed = "\ca\ui\data\ui_taskstate_failed_CA.paa";
		color[] = {0.863, 0.584, 0.0, 1};
		colorCreated[] = {0.95, 0.95, 0.95, 1};
		colorCanceled[] = {0.606, 0.606, 0.606, 1};
		colorDone[] = {0.424, 0.651, 0.247, 1};
		colorFailed[] = {0.706, 0.0745, 0.0196, 1};
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
		
	class CustomMark {
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		color[] = {0.65, 0.64, 0.03, 1};
		size = 16;
		importance = 0.7 * 16 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Fortress {
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 2 * 16 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Fuelstation {
		icon = "\ca\ui\data\map_fuelstation_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 2 * 16 * 0.05;
		coefMin = 0.75;
		coefMax = 4;
	};
	
	class Fountain {
		icon = "\ca\ui\data\map_fountain_ca.paa";
		color[] = {0, 0.35, 0.7, 1};
		size = 12;
		importance = 1 * 12 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Hospital {
		icon = "\ca\ui\data\map_hospital_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 16;
		importance = 2 * 16 * 0.05;
		coefMin = 0.5;
		coefMax = 4;
	};
	
	class Chapel {
		icon = "\ca\ui\data\map_chapel_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 1 * 16 * 0.05;
		coefMin = 0.9;
		coefMax = 4;
	};
	
	class Church {
		icon = "\ca\ui\data\map_church_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 2 * 16 * 0.05;
		coefMin = 0.9;
		coefMax = 4;
	};
	
	class Lighthouse {
		icon = "\ca\ui\data\map_lighthouse_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 20;
		importance = 3 * 16 * 0.05;
		coefMin = 0.9;
		coefMax = 4;
	};
	
	class Quay {
		icon = "\ca\ui\data\map_quay_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 16;
		importance = 2 * 16 * 0.05;
		coefMin = 0.5;
		coefMax = 4;
	};
	
	class Rock {
		icon = "\ca\ui\data\map_rock_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 12;
		importance = 0.5 * 12 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Ruin {
		icon = "\ca\ui\data\map_ruin_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 16;
		importance = 1.2 * 16 * 0.05;
		coefMin = 1;
		coefMax = 4;
	};
	
	class SmallTree {
		icon = "\ca\ui\data\map_smalltree_ca.paa";
		color[] = {0.35, 0.74, 0.33, 1};
		size = 12;
		importance = 0.6 * 12 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	class Stack {
		icon = "\ca\ui\data\map_stack_ca.paa";
		size = 20;
		color[] = {0, 0.9, 0, 1};
		importance = 2 * 16 * 0.05;
		coefMin = 0.9;
		coefMax = 4;
	};
	class Tree {
		icon = "\ca\ui\data\map_tree_ca.paa";
		color[] = {0.40, 0.74, 0.33, 1};
		size = 12;
		importance = 0.9 * 16 * 0.05;
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Tourism {
		icon = "\ca\ui\data\map_tourism_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 16;
		importance = 1 * 16 * 0.05;
		coefMin = 0.7;
		coefMax = 4;
	};
	
	class Transmitter {
		icon = "\ca\ui\data\map_transmitter_ca.paa";
		size = 20;
		color[] = {0, 0.35, 0.7, 1};
		importance = 2 * 16 * 0.05;
		coefMin = 0.9;
		coefMax = 4;
	};
	
	class ViewTower {
		icon = "\ca\ui\data\map_viewtower_ca.paa";
		size = 16;
		color[] = {0, 0.35, 0.7, 1};
		importance = 2.5 * 16 * 0.05;
		coefMin = 0.5;
		coefMax = 4;
	};
	
	class Watertower {
		icon = "\ca\ui\data\map_watertower_ca.paa";
		color[] = {0, 0.35, 0.7, 1};
		size = 32;
		importance = 1.2 * 16 * 0.05;
		coefMin = 0.9;
		coefMax = 4;
	};
	class Waypoint {
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		size = 14;
		color[] = {0, 0.35, 0.7, 1};
		importance = 2.5 * 16 * 0.05;
		coefMin = 0.5;
		coefMax = 4;		
	};
	
	class WaypointCompleted {
		icon = "\ca\ui\data\map_waypoint_completed_ca.paa";
		size = 16;
		color[] = {0, 0.35, 0.7, 1};
		importance = 2.5 * 16 * 0.05;
		coefMin = 0.5;
		coefMax = 4;		
	};
	class ActiveMarker {
		icon = "";
		color[] = {0, 0, 1, 1};
		size = 15;
		importance = 2.5 * 16 * 0.05;
		coefMin = 0.5;
		coefMax = 4;
	};	
};

