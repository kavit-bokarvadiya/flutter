import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final _nameCtrl = TextEditingController();
  String name = '';
  final _emailCtrl = TextEditingController();
  String email = '';
  final _passCtrl = TextEditingController();
  String pwd = '';

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:
    Text("Registration Form")
    ),
      body: Column(
        children: [
          Text("User Registration Form"),
          TextFormField(
              controller: _nameCtrl,
              decoration: InputDecoration(
                  labelText: "Enter Your Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter name";
                }
              }
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _emailCtrl,
            decoration: InputDecoration(
                labelText: "Enter Email",
                border: OutlineInputBorder()),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty)
                return "Please Enter Email";
            },
          ),
          SizedBox(height: 10),
          TextFormField(controller: _passCtrl,
            decoration: InputDecoration(labelText: "Enter Password",
                border: OutlineInputBorder()),
            // keyboardType: TextInputType.visiblePassword,
            validator: (value){
              if(value == null || value.isEmpty)
                return "Enter Password";
            },),
          SizedBox(height: 10),

          SizedBox(height: 25),
          ElevatedButton(onPressed: () {
            setState(() {
              name = _nameCtrl.text;
              email = _emailCtrl.text;
              pwd = _passCtrl.text;
            });
          }, child: Text("Register")),

          Row(
            children: [
              Column(
                children: [
                  Text(" ************ Your Data  ***************"),
                  if((name.isNotEmpty)&&(email.isNotEmpty)&&(pwd.isNotEmpty))
                    Text('Name: $name'),
                  SizedBox(height: 10),
                  Text('Email: $email'),
                  SizedBox(height: 10),
                  Text('Name: $pwd'),
                  SizedBox(height: 10),


                ],
              ),

            ],
          ),

        ],
      ),

    );
  }
}
