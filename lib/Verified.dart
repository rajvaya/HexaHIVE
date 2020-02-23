import 'package:flutter/material.dart';

class Verified extends StatefulWidget {
  @override
  _VerifiedState createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child : Icon(Icons.verified_user,size: 100,color: Colors.green,)
                ),
              ),
              Text("User Verified\nAnd Email Sent To User",style: TextStyle(fontSize: 24,),textAlign: TextAlign.center,),
            ],
          )
      ),
    );
  }
}
