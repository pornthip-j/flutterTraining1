import 'dart:io';

import 'package:chol_pilab/screens/show_api_web.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class MyService extends StatefulWidget {
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
//Explicit
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Widget myWidget = ShowApiWeb();

//Method
  Widget showSignOut() {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      onPressed: () {
        processSignOut();
      },
    );
  }

Future<void> processSignOut()async{
  await firebaseAuth.signOut().then((response){
    exit(0);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[showSignOut()],
        title: Text('My Service'),
      ),
      body: myWidget,
    );
  }
}
