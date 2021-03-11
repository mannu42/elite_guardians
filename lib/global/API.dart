import 'dart:convert';
import 'package:elite_guardians/dashboard/DashBoardScreen.dart';
import 'package:elite_guardians/global/CommonWidgets.dart';
import 'package:elite_guardians/global/Constants.dart';
import 'package:elite_guardians/global/Global.dart';
import 'package:elite_guardians/global/PLoader.dart';
import 'package:elite_guardians/global/ServiceHttp.dart';
import 'package:elite_guardians/pojo/BookingPojo.dart';
import 'package:elite_guardians/pojo/ErrorPojo.dart';
import 'package:elite_guardians/pojo/JobsListPojo.dart';
import 'package:elite_guardians/pojo/LoginPojo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class API{
  BuildContext context;
  API(this.context);
  login(Map jsonPost){
  PLoader loader=PLoader(context);
  loader.show();
    ServiceHttp().httpRequestPost("login",map: jsonPost,
        onSuccess: (value) async {
          LoginPojo loginPojo= LoginPojo.fromJson(json.decode(value));
          SharedPreferences preferences =await Global.getSharedPref();
          preferences.setString(Constants.TOKEN, loginPojo.token);
          preferences.setBool(Constants.ISREGISTERED, true);
          preferences.setString(Constants.USER_PREF,json.encode(loginPojo.user.toJson()));
          loader.hide();
          Global.toast(context, "Logged In Successfully");
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DashBoardScreen()));
        }, onError: (value) {
          loader.hide();
          Map<String, dynamic> map = json.decode(value);
          CommonWidgets.showMessage(context,map["error"]);
        });
  }

  register(Map jsonPost){
    PLoader loader=PLoader(context);
    loader.show();
    ServiceHttp().httpRequestPost("register",map: jsonPost,
        onSuccess: (value) async {
          LoginPojo loginPojo= LoginPojo.fromJson(json.decode(value));
          SharedPreferences preferences =await Global.getSharedPref();
          preferences.setString(Constants.TOKEN, loginPojo.token);
          preferences.setBool(Constants.ISREGISTERED, true);
          preferences.setString(Constants.USER_PREF,json.encode(loginPojo.user.toJson()));
          loader.hide();
          Global.toast(context, "Registered Successfully");
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DashBoardScreen()));
        }, onError: (value) {
          loader.hide();
          CommonWidgets.showMessage(context, ErrorPojo.fromJson(json.decode(value)).errors.error[0]);
        });
  }

  jobsList({void onSuccess(value),void onError(value)}){
    ServiceHttp().httpRequestGet("get-booking-request",
        onSuccess: (value) async{
          JobsListPojo pojo=JobsListPojo.fromJson(json.decode(value));
          onSuccess(pojo.bookings);
        }, onError: (value) {
          Map<String, dynamic> map = json.decode(value);
          onError(map["error"]);
         // CommonWidgets.showMessage(context, ErrorPojo.fromJson(json.decode(value)).errors.error[0]);
        });
  }

  createRequest(Map jsonPost){
    PLoader loader=PLoader(context);
    loader.show();
    ServiceHttp().httpRequestPost("create-booking-request",map: jsonPost,
        onSuccess: (value) async {
          loader.hide();
          Global.toast(context, "Request Created Successfully");
        }, onError: (value) {
          loader.hide();
          Map<String, dynamic> map = json.decode(value);
          CommonWidgets.showMessage(context,map["error"]);
        });
  }
  acceptReject(Map jsonPost,{bool rejected,void onResponse(value)}){
    PLoader loader=PLoader(context);
    loader.show();
    ServiceHttp().httpRequestPost("update-comment",map: jsonPost,
        onSuccess: (value) async {
          BookingPojo pojo=BookingPojo.fromJson(json.decode(value));
        onResponse(pojo.bookings);
          loader.hide();
          Global.toast(context, rejected!=null?"Request Rejected":"Request Accepted");
        }, onError: (value) {
          loader.hide();
          onResponse(null);
          Map<String, dynamic> map = json.decode(value);
          CommonWidgets.showMessage(context,map["error"]);
        });
  }
}