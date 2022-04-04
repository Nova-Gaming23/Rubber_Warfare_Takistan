//---Simple Error Massage by NG23
private ["_ErrorCode","_ErrorAddInfo","_Info1","_Info2"];
_ErrorCode = _this select 0;
_ErrorAddInfo = _this select 1;
_Info1	=	_this select 2;
_Info2	=	_this select 3;
playSound "bitmenu";
sleep 0.5;
if (!_ErrorAddInfo) then {
_starL  = "<t size='4' align='center'><img image='NG23\Pics\Error.paa' align='Center'/></t><br/>";
_title  = format ["<t color='#b00c0c' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>--- ERROR ---</t><br/><br/>"];
_text   = "<t color='#eb6f1d' size='1' shadow='1' shadowColor='#000000' align='Center'>" + (localize "STR_HINT_ERROR_txt") + "<br/></t>";
_text2  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>Error Code: %1</t><br/><br/>",_ErrorCode];

hint parseText (_starL + _title + _text + _text2);

}else{

_starL  = "<t size='4' align='center'><img image='NG23\Pics\Error.paa' align='Center'/></t><br/>";
_title  = format ["<t color='#b00c0c' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>--- ERROR ---</t><br/><br/>"];
_text   = "<t color='#eb6f1d' size='1' shadow='1' shadowColor='#000000' align='Center'>" + (localize "STR_HINT_ERROR_txt") + "<br/></t>";
_text2  = format ["<t color='#eb6f1d' size='1.1' shadow='1.5' shadowColor='#000000' align='center'><br/>%1</t><br/>",_Info1];
_text3  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/><br/>Error Code: %1</t><br/><br/>",_ErrorCode];

hint parseText (_starL + _title + _text + _text2 + _text3);
};