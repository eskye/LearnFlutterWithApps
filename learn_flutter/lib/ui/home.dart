import 'package:flutter/material.dart';

import 'customButton.dart';

class ScaffoldExample extends StatelessWidget {
  _tapButton(){
    debugPrint("Alarm tapped");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text("Scaffold App"),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.email, color: Colors.white, size: 30.0), onPressed: () => debugPrint("Email Icon Tapped!")),
          IconButton(icon: Icon(Icons.access_alarm, color: Colors.white, size: 30.0), onPressed: _tapButton)
        ],
        centerTitle: false,
        backgroundColor: Colors.deepOrange,
      ),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("Account")),
        BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text("Inbox")),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Setting")),
      ], onTap: (int index) => debugPrint("Tapped item: $index"),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add, color: Colors.white,),
        tooltip: "Add new user"
      ),
      backgroundColor: Colors.grey.shade50,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(buttonText: "Login", snackBarBgColor: Colors.green, buttonBgColor: Colors.green, snackBarMessage: "Success notification message",)

//            InkWell(
//              child: Container(
//                child: Text("Tap Me!",
//                  style: TextStyle(fontSize: 25.4, backgroundColor: Colors.blue),
//                ),
//
//              ),
//
//              onTap: _tapButton,
//            )
          ],
        ),
      ),
    );
  }
}



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepOrangeAccent,
        child: Container(
          child: Center(
            child: Text(
              "Hello Flutter!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0),
            ),
          ),
        ));
  }
}
