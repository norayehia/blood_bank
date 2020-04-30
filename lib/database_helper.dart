import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelper {

//  String serverUrl = "http://192.168.1.8/localhost/bloodbank/login.php";
  var status;

  var token;

  loginData(String email, String password) async {
    String myUrl =  "file:///C:/xampp/htdocs/blod-bank/login.php";
    final response = await http.post(myUrl,
        headers: {
          'Accept': 'application/json'
        },
        body: {
          "email": "$email",
          "password": "$password"
        });
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if (status) {
      print('data : ${data["error"]}');
    } else {
      print('data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }


  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    print('read : $value');
  }
  registerData(String id ,String name,String age,String email,String address , String password,String type) async{
    // String serverUrl2 = "http://192.168.1.8/localhost/bloodbank/login.php";
    String myUrl = "http://192.168.1.8/localhost/bloodbank/insert.php";
    final response = await  http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {
          "id": "$id",
          "name": "$name",
          "age": "$age",
          "email": "$email",
          "address": "$address",

          "password" : "$password",
          "type": "$type",

        } ) ;
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if(status){
      print('data : ${data["error"]}');
    }else{
      print('data : ${data["token"]}');
      _save(data["token"]);
    }

  }
}