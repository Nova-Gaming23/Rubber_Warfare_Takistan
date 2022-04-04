// general definition of SCROLLBAR macro
#define SCROLLBAR 
  class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
		border = "#(argb,8,8,3)color(1,1,1,1)";
    shadow = 0;
	autoScrollEnabled = 1;


  };
  class VScrollbar {
    color[]               = {1, 1, 1, 1};
    width                 = 0.021;
    autoScrollSpeed       = -1;
    autoScrollDelay       = 5;
    autoScrollRewind      = false;
    shadow                = 0;
  };
  class HScrollbar : VScrollbar {
    height                = 0.028;
  };
  
class controls {
  class Tree {
    idc = 20000; 
    type = 107; 

    // include the macro in the control's definition
    SCROLLBAR
  };
};