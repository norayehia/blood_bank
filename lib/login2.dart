
import 'package:bloodbank/contact.dart';
import 'package:bloodbank/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'database_helper.dart';
import 'Account.dart';
import 'package:http/http.dart'as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  /* @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Login extends StatelessWidget {

 */read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;
    if(value != '0'){
      Navigator.of(context).push(
          new MaterialPageRoute(
           // builder: (BuildContext context) => new  Login(),
          )
      );
    }
  }

  @override
  initState(){
    read();
  }




  DatabaseHelper database_helper = new DatabaseHelper();
  String msgStatus = '';

  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();

  _onPressed(){
    setState(() {
      if(_emailController.text.trim().toLowerCase().isNotEmpty &&
          _passwordController.text.trim().isNotEmpty ){
        database_helper.loginData(_emailController.text.trim().toLowerCase(),
            _passwordController.text.trim()).whenComplete((){
          if(database_helper.status){
          //  _showDialog();
            msgStatus = 'Check email or password';
          }else{

          Navigator.pushReplacementNamed(context, './place');


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
          'صفحة الدخول',
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

                      //Divider(height: 30, color: Colors.red),
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
                      TextField(controller:
                      password,
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
                      /* onPressed: () {
                        Navigator.pushNamed(context, 'Two');
                      },*/
                      onPressed: login,
                      child: Text(
                        'دخول',
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


  Future<List> login() async {
    final response = await http.post('http://192.168.1.8/bloodbank/login.php',
        body: {'email': email.text, 'password': password.text});
    print(response.body);

    if (response.body.contains(email.text)) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    }
  }
}
