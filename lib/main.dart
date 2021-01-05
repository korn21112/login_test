import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black54,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(child :
              Image.asset('assets/ice.png'),
            alignment: FractionalOffset.center,
            width: 300,
          ),
          Container(child: Text('ICe'),alignment: FractionalOffset.center,),
          RaisedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
          );
          },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return SecondPageSate();
  }
}

class SecondPageSate extends State<SecondPage>{

  TextEditingController inputname = new TextEditingController();
  TextEditingController inputpassword = new TextEditingController();
  String name,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Second Page"),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Text('Login'),
            TextFormField(
              controller: inputname,
              decoration: InputDecoration(
                hintText: 'Input Name',
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: inputpassword,
              decoration: InputDecoration(
                hintText: 'Input Password',
                labelText: 'Password',
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState((){
                  name = inputname.text;
                  password = inputpassword.text;
                }
                );
              },
              color: Colors.deepPurple,

              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),),
            ),
            Text(name!=null?'Your name = '+'$name':'enter name'),
            Text(password!=null?'Your name = '+'$password':'enter password'),
          ],
        ),
      ),
    );
  }
}