import 'package:bloodbank/register.dart';
import 'package:flutter/material.dart';
class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('ماذا تريد؟',style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width*1.0,
        height: MediaQuery.of(context).size.height*1.0,
        child: ListView(
          children: <Widget>[
            Column(
            children: <Widget>[
              Image.asset('images/44.png',height: 200,),

              Container(
                height: 100,
                width: 300,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'four');
                  },
                  color: Colors.red
                  ,child: Text('التبرع بالدم',style: TextStyle(fontSize: 40,color: Colors.white),),
                ),
              ),
              Divider(),
              Container(
                height: 100,
                width: 300,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'four');

                  },
                  color: Colors.blueGrey
                  ,child: Text('سحب ',style: TextStyle(fontSize: 40,color: Colors.white),),
                ),
              ),
              Divider(),
              Container(
                height: 100,
                width: 300,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'Account');
                  },
                  color: Colors.black
                  ,child:Row(
                  children: <Widget>[
                    Icon(Icons.account_circle,color: Colors.white,size: 40,),
                    Text('حسابك الخاص',style: TextStyle(fontSize: 35,color: Colors.white),),
                  ],
                )
                ),
              ),

            ],
          )],
        ),
      ),

    );
  }
}
