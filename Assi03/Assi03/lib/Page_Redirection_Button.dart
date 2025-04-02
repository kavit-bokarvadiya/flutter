import 'package:flutter/material.dart';
import 'SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int count = 0;

  void incrementor()
  {
    setState(() {
      count++;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Increment Application"),titleTextStyle:
      TextStyle
        (backgroundColor: Colors.black, color: Colors.white),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Click on Button ..."),
            ElevatedButton(onPressed: incrementor, child: Text("Click to Increment...")),
            TextButton(onPressed: incrementor, child: Text("Text button")),
            OutlinedButton(onPressed: incrementor, child: Text("Outlined button")),
            IconButton(onPressed: incrementor, icon: Text("Icone Button")),
            GestureDetector(onTap: incrementor, child: Text("custom button"),),
            Text("Current counter value is $count"),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            }, child: Text("Registration Page")),
          ],
        ),
      ),


    );
  }
}

