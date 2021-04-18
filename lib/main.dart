import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Weahter Forecast',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _searchCity(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _cityDetail(),
                SizedBox(
                  height: 30,
                ),
                _temperatureDetail(),
                SizedBox(
                  height: 30,
                ),
                _extraDetail(),
                SizedBox(
                  height: 50,
                ),
                Text('7-DAY WEATHER FORECAST', style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(
                  height: 10,
                ),
                _bottomDetail(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _searchCity() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.search, color: Colors.white,),
        title: Text(
          'Enter City Name',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ],
  );
}

Widget _cityDetail(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      ListTile(
        contentPadding: EdgeInsets.only(left: 30),
        title: Text(
          'Almaty Oblast, KZ',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          'Friday, Mar 20, 2021',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget _temperatureDetail(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      ListTile(
        contentPadding: EdgeInsets.only(left: 70),
        leading: Icon(Icons.wb_sunny, color: Colors.white, size: 50,),
        title: Text(
          '14 °F',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          'LIGHT SNOW',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        ),
      ),
    ],
  );
}

Widget _extraDetail(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 90,
            height: 30,
            child: Row(
              children: [
                Icon(Icons.ac_unit, color: Colors.white,),
                Text('5 km/hr', style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          SizedBox(
            width: 60,
            height: 30,
            child: Row(
              children: [
                Icon(Icons.ac_unit, color: Colors.white,),
                Text('3%', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(
            width: 60,
            height: 30,
            child: Row(
              children: [
                Icon(Icons.ac_unit, color: Colors.white,),
                Text('20%', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _bottomDetail(){
  return SizedBox(
    height: 100.0,
    child: ListView(
      shrinkWrap: true,
      itemExtent: 120.0,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ListTile(
          tileColor: Colors.white70,
          title: Center(
            child: Text('Friday  \n  6 °F'),
          ),
        ),
        ListTile(
          tileColor: Colors.white70,
          title: Center(
            child: Text('Saturday \n    5 °F'),
          ),
        ),
        ListTile(
          tileColor: Colors.white70,
          title: Center(
            child: Text('Sunday \n  22 °F'),
          ),
        ),
      ],
    ),
  );
}