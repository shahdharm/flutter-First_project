import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyScreen(),
  ));
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
   int princile = 0, time = 0, rate = 0;
  
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple calculator'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(234, 12, 110, 110),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                onChanged: ((value) {
                  princile = int.parse(value);
                }),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Field',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: ((value) {
                  time = int.parse(value);
                }),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Field',
                ),
              ),
              TextFormField(
                onChanged: ((value) {
                  rate = int.parse(value);
                }),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Field',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = (princile * time * rate);
                    });
                  },
                  child: const Text('calculate'),
                ),
              ),
              Text(
                'Simple Intrest : $result',
              )
            ],
          ),
        ));
  }
}
