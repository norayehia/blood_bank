import 'dart:convert';

import 'package:bloodbank/Account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'database_helper.dart';

import 'package:http/http.dart'as http;
class Enter extends StatefulWidget {
  Enter({Key key , this.title}) : super(key : key);
  final String title;
  @override
  _State createState() => _State();
}

class _State extends State<Enter> {
  /* @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Enter extends StatelessWidget {*/

  DatabaseHelper databaseHelper = new DatabaseHelper();
  String msgStatus = '';

  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _typeController = new TextEditingController();
  final TextEditingController _idController = new TextEditingController();
  final TextEditingController _addressController = new TextEditingController();

  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  TextEditingController name= TextEditingController();
  TextEditingController age= TextEditingController();
  TextEditingController address= TextEditingController();
  TextEditingController type= TextEditingController();

  _onPressed(){
    setState(() {
      if(_emailController.text.trim().toLowerCase().isNotEmpty &&
          _passwordController.text.trim().isNotEmpty ){
        databaseHelper.registerData(_idController.text.trim().toLowerCase(), _nameController.text.trim().toLowerCase(), _ageController.text.trim().toLowerCase(), _emailController.text.trim().toLowerCase(), _addressController.text.trim().toLowerCase(),_passwordController .text.trim().toLowerCase(), _typeController.text.trim().toLowerCase()
        ).whenComplete((){
           if(databaseHelper.status){
           // _showDialog();
            msgStatus = 'Check email or password';
          }else{
          Navigator.pushReplacementNamed(context, 'Two');


          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          Icon(
            Icons.menu,
            size: 30,
          )
        ],
        backgroundColor: Colors.red,
        title: Text(
          'صفحة التسجيل',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(),
                    child: Image.asset(
                      'images/992.png',
                      height: 100,
                      width: 100,
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * .85,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: <Widget>[
                      TextField(
                          controller:name,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              contentPadding: EdgeInsets.only(
                                  left: 10, top: 15, right: 10, bottom: 15),
                              hintText: 'الاسم',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)))),
                      TextField(
                          controller:age,

                          style: TextStyle(
                            fontSize: 20,
                          ),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              icon: Icon(Icons.date_range),
                              contentPadding: EdgeInsets.only(
                                  left: 10, top: 15, right: 10, bottom: 15),
                              hintText: 'العمر',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)))),
                      TextField(                          controller:address,

                          style: TextStyle(
                            fontSize: 15,
                          ),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              icon: Icon(Icons.location_on),
                              contentPadding: EdgeInsets.only(
                                  left: 10, top: 15, right: 10, bottom: 15),
                              hintText: 'العنوان',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)))),
                      TextField(                          controller:type,

                          style: TextStyle(
                            fontSize: 15,
                          ),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              icon: Icon(Icons.add),
                              contentPadding: EdgeInsets.only(
                                  left: 10, top: 15, right: 10, bottom: 15),
                              hintText: 'فصيلة الدم',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)))),
                      Divider(height: 30, color: Colors.red),
                      TextField(
                          controller:email,

                          style: TextStyle(
                            fontSize: 15,
                          ),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              icon: Icon(Icons.person_pin),
                              contentPadding: EdgeInsets.only(
                                  left: 10, top: 15, right: 10, bottom: 15),
                              hintText: 'البريد الالكتروني',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)))),
                      TextField(                          controller:password,

                          obscureText: true,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              icon: Icon(Icons.fingerprint),
                              contentPadding: EdgeInsets.only(
                                  left: 10, top: 15, right: 10, bottom: 15),
                              hintText: 'الرقم السري',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)))),
                    ],
                  ),
                ),
                Center(
                  child: RaisedButton(
                      color: Colors.red,
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      /*  onPressed: () {
                        Navigator.pushNamed(context, 'Two');
                      },*/
                      onPressed:()async{ signup(context);},
                      child: Text(
                        'تسجيل',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }


  signup(BuildContext context) async {
    List data = await Signup(
      name.text,
      email.text,
      password.text,
      age.text,
      type.text,
      address.text,

    );
    print(data);
    if (data.length != 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Account()));
    } else {
      print("false");
    }
  }

  Future Signup(
      String name, String email, String password,String age,String type,String address) async {
    String url = "http://192.168.1.8/bloodbank/register.php";

    http.Response response = await http.post(url, body: {
      'name': name,
      'email': email,
      'password': password,
      'age': age,
      'address': address,
      'type': type,
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      return json.encode(response.body);
    }
  }
}