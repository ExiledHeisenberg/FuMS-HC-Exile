// CheckVehicle.sqf
// TheOneWhoKnocks
// 02/02/2020
// [_msnTag, _amount, _list];
// _params = [_msnTag, _trigName, _obj, _distance];

private ["_result","_data","_objectList","_trigName","_msnTag","_objName","_objectsRemaining"];
_data = _this select 0;
_msnTag = _data select 0;
_trigName = _data select 1;
_obj = _data select 2;
_distance = _data select 3;
_debugCV = false;
_result = false;

if (isNull _obj) exitWith {diag_log format ["<FuMS> CheckVehicle: Terminating for: %1",_msnTag];_result};


if (_debugCV) then
{
	diag_log format ["<FuMS> CheckVehicle: _data: %1",_data];
	diag_log format ["<FuMS> CheckVehicle: _msnTag: %1",_msnTag];
	diag_log format ["<FuMS> CheckVehicle: _obj: %1",_obj];
};


_homePos = _obj getVariable "FuMS_HOMEPOS";
_currPos = getpos _obj; //Get currPos of vehicle

_vehicleTaken = _obj getVariable "FuMS_TAKEN";
_distanceFromHome = _currPos distance _homePos;




if (_vehicleTaken) then
{
	if (_distanceFromHome > _distance) then
	{	
		_result=true;
	};
};

if (_debugCV) then
{
	diag_log format ["<FuMS> CheckVehicle Trigger: Vehicle#%1 for %2_%3: _result: %7 | _distance:%4 | _distanceFromHome:%5 | _vehicleTaken:%6",_obj,_msnTag,_trigName,_distance,_distanceFromHome,_vehicleTaken,_result];
};

_result