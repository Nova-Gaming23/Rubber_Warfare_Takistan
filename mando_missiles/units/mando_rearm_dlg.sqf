mando_rearm_target = _this select 0;
_ok = createDialog "MandoMissileRearmDlg";
titleText ["If rearm fails, try as gunner", "PLAIN"];
if (!_ok) then
{
   hint "Dialog failed";
};