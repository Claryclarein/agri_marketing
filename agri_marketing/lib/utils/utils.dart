import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Utils {
  static showMsg(title, msg, color, icon) async {
    SmartDialog.show(
        //tag:AlertDialog
        alignment: Alignment.bottomCenter,
        backDismiss: true,
        displayTime: Duration(microseconds: 3000),
        maskColor: Colors.transparent,
        builder: (_) {
          return Container(
            width: double.infinity,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: color[300],
                border: Border(
                    left: BorderSide(
                  color: color[700],
                  width: 3,
                ))),
            child: ListTile(
              leading: Container(
                height: 70,
                width: 30,
                alignment: AlignmentDirectional.center,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              title: Text(
                '$title',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                '$msg',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }
}
