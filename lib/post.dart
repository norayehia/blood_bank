import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'posth.dart';


import 'package:http/http.dart' as http;
class five extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('اضافة منشور',style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10,right: 5,top: 20),
            width: MediaQuery.of(context).size.width*1.0,
            child: Text('اضف منشورا هنا بحيث يراه الاخرون',style: TextStyle(fontSize: 25,color: Colors.red,
            fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,left: 10,right: 10),
            width: MediaQuery.of(context).size.width*100,
            child: Column(
              children: <Widget>[
              TextField(
                  autocorrect: true,
                    enabled: true,
                    maxLength: 600,
                    maxLines: 10,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 10, top: 15, right: 10, bottom: 15),
                        hintText: 'اضافة منشور',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32)))),
                RaisedButton(

                    color: Colors.black,
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    onPressed: () {
                     Navigator.of(context).pushNamed('six');
                    },
                    shape: CircleBorder(),
                    child: Text(
                      'نشر',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
          ),
        ],
      )

    );
  }

}
/*class six extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("منشورات",style: TextStyle(fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        //elevation: defaultPlatform,
      ),

      body: new Container(
        child: new Center(

          child: new ListView(
            children: <Widget>[

              new ListTile(
                title: new Text("khaled shehata"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Noura Yehia"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Hayam Magdy"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),



              ),
              new ListTile(
                title: new Text("Shaimaa"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Yousef"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Omar"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Dalia"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Hany"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Ali"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),
              new ListTile(
                title: new Text("Ahmed"),
                subtitle: new Text("موقع جميل انصح  باستعماله"),
                trailing: new Icon(Icons.favorite),


              ),



            ],
          ),
        ),
      ),
    );
  }
}*/
class post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final appTitle = 'other doner posts';
//backgroundColor:Colors.blueGrey;
    return Scaffold(
     // title: appTitle,
     /* appBar: new AppBar(
       // title://appTitle,
       // new Text("other doner posts"),
        backgroundColor: Colors.blueGrey,
        //elevation: defaultPlatform,
      ),*/

     // home:
       body:HomePage( title: appTitle),
    );
  }
}
/*class donor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'donor Portal',
      home: Scaffold(
        appBar: AppBar(
          title: Text('donor Portal'),
        ),
        body: Center(
            child: JobsListView()
        ),
      ),
    );
  }
}*/
