import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
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
  final _nameController = TextEditingController();
  String _name = '';
  int _value = 1;
  String _selectedValue = '';
  bool isCricket = false;
  bool isBadminton = false;
  String selectedHobbies = '';
  final feedbackController = TextEditingController();
  String feedbackText = '';


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
                labelText:"Enter Name"),
            validator: (value){
              if(value == null || value.isEmpty)
              {
                return "Please Enter Name";
              }
            },
          ),
          Row(
            children: [
              Text("Select Gender"),
              Radio(value: 1,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    if(value != null)
                      _value = value;
                  });
                },
              ),
              SizedBox(width: 10.0,),
              Text("Male",),
              Radio(value: 2,
                groupValue: _value,
                onChanged: (int ?value){
                  setState(() {
                    if(value != null)
                      _value = value;
                  });
                },
              ),
              SizedBox(width: 10.0,),
              Text("Female",),
            ],
          ),

          Row(
            children: [
              Text("Select Hobby"),
              Checkbox(
                value: isCricket,
                activeColor: Colors.green,
                onChanged: (bool? value) {
                  setState(() {
                    isCricket = value!;
                  });
                },
              ),
              const Text("Cricket"),
              // Female Checkbox
              Checkbox(
                value: isBadminton,
                activeColor: Colors.green,
                onChanged: (bool? value) {
                  setState(() {
                    isBadminton = value!;
                  });
                },
              ),
              const Text("Badminton"),
            ],
          ),

          // In your widget tree:
          TextFormField(
            controller: feedbackController, // Uses the controller variable
            maxLines: 5, // Allows for a multiline text input
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Write your feedback here...",),
          ),

          ElevatedButton(onPressed:(){
            setState(() {
              //name field
              _name = _nameController.text;
              //radio button
              if (_value == 1) {
                _selectedValue = "Radio 1 Selected";
              } else if (_value == 2) {
                _selectedValue = "Radio 2 Selected";
              }
              //hobby field
              selectedHobbies = '';
              if (isCricket) {
                selectedHobbies += 'Cricket, ';
              }
              if (isBadminton) {
                selectedHobbies += 'Badminton, ';
              }
              if (selectedHobbies.isNotEmpty) {
                selectedHobbies = selectedHobbies.substring(0, selectedHobbies.length - 2); // Remove trailing comma and space
              }
              feedbackText = feedbackController.text;

            });

          },
              child: Text("Submit")),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text("User Data",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                  if((_name.isNotEmpty)&&(_selectedValue.isNotEmpty)&&(selectedHobbies.isNotEmpty)&&(feedbackText.isNotEmpty))
                    Text('Name: $_name'),
                  Text(_selectedValue),
                  Text('Selected Hobbies: $selectedHobbies'),
                  Text('Your Feedback: $feedbackText'),
                ],
              ),

            ],
          )
        ],

      ),


    );
  }
}