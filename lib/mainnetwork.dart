import 'package:flutter/material.dart';
import 'moviefunction.dart';
import 'netwok.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class newHomePage extends StatefulWidget {
  @override
  _newHomePageState createState() => _newHomePageState();
}

class _newHomePageState extends State<newHomePage> {
  Moviefunction name = Moviefunction();
  String typedName;var value;
  TextEditingController inputcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[Container(
              child: TextField(
                controller: inputcontroller,
                decoration: InputDecoration(
                  hintText: 'Type the film you want to Search',
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                ),
              ),

            ),
              RaisedButton(
                child:Text("get"),
                onPressed:()async{
                  var get  = await name.getData(inputcontroller.text);
                 var route = new MaterialPageRoute(builder: (BuilderContext) =>
                 new MyHomePage(value:get),

                 );
                 Navigator.of(context).push(route);
                }
              )


            ],
          ),
        ),
      ),
    );
  }
}
