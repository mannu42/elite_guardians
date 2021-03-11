
import 'package:elite_guardians/global/API.dart';
import 'package:elite_guardians/global/AppColours.dart';
import 'package:elite_guardians/global/CommonWidgets.dart';
import 'package:elite_guardians/global/Constants.dart';
import 'package:elite_guardians/global/EliteAppBar.dart';
import 'package:elite_guardians/global/Global.dart';
import 'package:elite_guardians/global/Size.dart';
import 'package:elite_guardians/pojo/Booking.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobDetailsScreen extends StatefulWidget
{
  Booking booking;
  JobDetailsScreen(this.booking);
  @override
  _JobDetailsScreenState createState() => _JobDetailsScreenState(booking);
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
_JobDetailsScreenState(this.booking);
  Booking booking;
  bool _isOpen=false;
  @override
  Widget build(BuildContext context) {
    Size().init(context);
    return Scaffold(
      appBar: EliteAppBar("Job Details"),
      backgroundColor: AppColours.black,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonWidgets.requestTextContainer("From",booking.destinationLocation,Icons.location_on_outlined),
              CommonWidgets.requestTextContainer("To",booking.arrivalLocation,Icons.location_on_outlined),
              CommonWidgets.requestTextContainer("Date","${Global.generateDate(booking.date)}",Icons.date_range_outlined),
              CommonWidgets.requestTextContainer("Time","${Global.formatTime(booking.time)}",Icons.watch_outlined),
              booking.comment!=null && booking.comment.isNotEmpty?CommonWidgets.requestTextContainer("Comments",booking.comment,Icons.comment_bank_outlined):SizedBox(),
              booking.price!=null && booking.price!=0 && booking.status==0?CommonWidgets.requestTextContainer("Price","475",Icons.attach_money):
              CommonWidgets.requestTextContainer("Status",booking.status==0?"Awaiting Confirmation":"Accepted",booking.status==0?Icons.timelapse_outlined:Icons.check_circle_outline),
              SizedBox(height: 10),
              booking.price!=null && booking.price!=0 && booking.status==0?Row(mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly,
                children: [
                  RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      rejectDialogue(context, booking);
                    }, color: AppColours.white,
                    child: CommonWidgets.selectedFontWidget(
                        "Reject",
                        AppColours.golden_button_bg, 14.0,
                        FontWeight.w500),),
                  RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      acceptRejectClick(booking.id, false);
                    }, color: AppColours.golden_button_bg,
                    child: CommonWidgets.selectedFontWidget(
                        "Accept",
                        AppColours.white, 14.0,
                        FontWeight.w500),)
                ],
              ):SizedBox(),
            ],
          ),
        ),
      )
    );
  }
rejectDialogue(BuildContext context,Booking booking) {
  _isOpen=true;
  Dialog rejectPopup = Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.black,
      child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState){
            return Container(
              child: rejectDialogueUI(setState,booking),
            );
          }
      ));

  showDialog(
    context: context,
    routeSettings: RouteSettings(name: "reject"),
    builder: (BuildContext context) {
      return rejectPopup;
    },
  ).then((value) =>_isOpen = false);
}
Widget rejectDialogueUI(StateSetter setState,Booking booking){
  var _commentController = TextEditingController();
  return   Container(
    decoration: BoxDecoration(
        color: AppColours.golden_button_bg,
        borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    padding: EdgeInsets.all(Size.size(15)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(child: Text("Please add your comments:",style: TextStyle(color: AppColours.black,fontWeight: FontWeight.bold,fontSize: Size.size(18)),)),
            InkWell(
              onTap: (){Navigator.of(context).pop();},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.close, color: Colors.black),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Column(
          children: [
            TextField(
              textInputAction: TextInputAction.go,
              style: TextStyle(color: Colors.white),
              controller: _commentController,
              decoration: CommonWidgets.loginFormDecoration("Optional",Icons.comment_bank_outlined),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      acceptRejectClick(booking.id, true,comment: _commentController.text);

                    }, color: Colors.red,
                    child: CommonWidgets.selectedFontWidget(
                        "Reject",
                        AppColours.white, 14.0,
                        FontWeight.w500),),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
acceptRejectClick(int id,bool ifRejected,{String comment}){
  if(ifRejected){
    Map jsonPost = {
      Constants.REQUEST_AR_COMMENT: comment,
      Constants.REQUEST_AR_ID: "$id",
      Constants.REQUEST_AR_ACCEPT_OR_REJECT: "1",
    };
    API(context).acceptReject(jsonPost,onResponse: (value){
      if(value!=null){
        setState(() {
          booking=value;
        });
      }
    },rejected: true);
  }
  else{
    Map jsonPost = {
      Constants.REQUEST_AR_ID: "$id",
      Constants.REQUEST_AR_ACCEPT_OR_REJECT: "2",
    };
    API(context).acceptReject(jsonPost,onResponse: (value){
      if(value!=null){
        setState(() {
          booking=value;
        });
      }
    });
  }
}
}