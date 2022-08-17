import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: HellYou(),
        ),
      ),
    );
  }
}


class HellYou extends StatefulWidget{
  @override
  _HelloYouState createState() =>_HelloYouState();
    
}
class _HelloYouState extends State<HellYou> {
  String name='';
 final TextEditingController txtName=TextEditingController();
  @override
  Widget  build (BuildContext context){
    return Column(
    children: [
      TextField(
      controller: txtName,
      ),
      ElevatedButton(
      child: Text('say hai'),
        onPressed:(){
          setState(() {
            name=txtName.text;
          });
        },
      ),
      Text('Hello '+ name),
      
    ],);
  }
  
}