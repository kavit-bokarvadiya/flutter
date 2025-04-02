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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("UI Interface"),
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Row 1 Heading .........."),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem fugiat dicta "
                        "sequi corporis dolore illo qui hic. Quo officia eligendi debitis vero"
                        " magnam dolorem, non nemo quod libero accusantium pariatur!", softWrap: true),
                  ),

                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,size:25),
                          Icon(Icons.star,size:25),
                          Icon(Icons.star,size:25),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("170 Revies"),
                    ],
                  ),

                ],
              ),

              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star)
                        ],
                      ),
                      Row(
                        children: [
                          Text("PREP:"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("25 min"),
                        ],
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.food_bank_rounded)
                        ],
                      ),
                      Row(
                        children: [
                          Text("COOKES:"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("1 h"),
                        ],
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lock_clock)
                        ],
                      ),
                      Row(
                        children: [
                          Text("FEEDS:"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("4-6"),
                        ],
                      ),
                    ],
                  ),
                  
                ],
              )

            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('assets/logo.jpg' ,height: 100, width: 100, fit: BoxFit.cover),
            ],
          ),
        ],
      ),
      
    );
  }
}

