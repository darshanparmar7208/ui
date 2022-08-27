import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  if (defaultTargetPlatform != TargetPlatform.android) {
    runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Android(),
    ));
  } else if( defaultTargetPlatform != TargetPlatform.iOS) {
    runApp(CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: IOS(),
    ));
  }
}

class IOS extends StatefulWidget {
  const IOS({Key? key}) : super(key: key);

  @override
  State<IOS> createState() => _IOSState();
}

class _IOSState extends State<IOS> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey.shade200,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.red,
          middle: Text('Settings Ui',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )
          ),
        ),
        child: Column(
          children: [
            Divider(color: Colors.transparent,height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Common',style: TextStyle(
                  color: Colors.black54
                ),)
              ],
            )
          ],
        ));
  }
}
class Android extends StatefulWidget {
  const Android({Key? key}) : super(key: key);

  @override
  State<Android> createState() => _AndroidState();
}

class _AndroidState extends State<Android> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  leading: Text('Settings Ui',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      )
  ),
),
    );
  }
}
