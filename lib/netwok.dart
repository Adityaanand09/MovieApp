import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'mainnetwork.dart';

class MyHomePage extends StatefulWidget {
  var value;
  MyHomePage({this.value});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map datafina;
  List userData ;


  String movieName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Movie DB'),
      backgroundColor: Colors.green,
    ),
      body: Container(
        height:200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
        itemCount: widget.value == null?0:widget.value.length,
        itemBuilder: (BuildContext context,int index){
          return Card(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.value[index]['Poster']),
                    backgroundColor: Colors.red,
                  ),
                  Text(widget.value[index]['Title'],
                  style:TextStyle(
                  fontSize: 20.0,
                    color:Colors.blueGrey,
                  ),
                  ),
                  Text(
                      widget.value[index]['Year'],
                  )
                ],
              )
          );
        },
    ),
      ),
    );
  }
}
