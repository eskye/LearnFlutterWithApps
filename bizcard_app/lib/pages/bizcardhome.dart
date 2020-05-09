import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BizCardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getCard(), _getAvatar()],
        ),
      ),
      backgroundColor: Colors.blueGrey.shade50,
    );
  }

  Container _getCard() {
    return Container(
      height: 200,
      width: 350,
      margin: EdgeInsets.all(45.0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(14.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sunkanmi Ijatuyi",
            style: TextStyle(
                fontSize: 20.9,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          Text(
            "Buildappwithpaulo.com",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              Text("T: @nightworkerjs")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.white, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300"),
              fit: BoxFit.cover)),
    );
  }
}
