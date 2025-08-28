import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//MyApp widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}  

//HomePage is the main screen of the app
class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override 
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  late String title;
  String text = "No value entered";
  void _setText(){
    setState(() {
      text = title;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //set the bg color of the app bar
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        //set the titile of the app bar
        title: const Text("Sneha Sinha"),
      ),
      //main body of the scaffold
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Email ID'),
              onChanged: (value) => title = value,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Password'),
              onChanged: (value) => title = value,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: _setText,
            style: ButtonStyle(
              elevation: WidgetStateProperty.all(8),
              backgroundColor: WidgetStateProperty.all(Colors.green),
              foregroundColor: WidgetStateProperty.all(Colors.white),
            ),
            child: const Text('Submit'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(text),
        ],
        
        
      ),
      
    );
    
  }
}