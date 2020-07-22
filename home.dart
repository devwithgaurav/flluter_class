import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    'Flutter day 4 App',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );
  mypress() {
    print('cliked');
  }

  mypress1() {
    print('cliked');
  }

  var url =
      'https://raw.githubusercontent.com/gauravrawat1/flluter_class/master/Gaurav.jpg';
//var MyImage = Image.network(url,width: 100,height: 100,);
  var myimage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );
  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.purple.shade300,
  );
  var MyCalIcon = Icon(Icons.access_alarm);

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress);
  var MyCalButton = IconButton(icon: MyCalIcon, onPressed: mypress1);

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.amber,
    leading: MyEmailIcon,
    actions: <Widget>[MyEmailIcon, MyCalIcon],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: myimage,
    backgroundColor: Colors.grey.shade100,
  );

  var design = MaterialApp(
    home: myhome,
  );

  return design;
}
