import 'package:flutter/material.dart';


class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  void _add(){
    setState((){
    result = int.parse(_firstController.text)+
    int.parse(_secondController.text);
  });
  }

  final _firstController = TextEditingController(text:'1');
  final _secondController = TextEditingController();
  int first = 0;
  int second = 0;
  int result = 0;
  final GlobalKey _globalKey = GlobalKey<FormState>();
  
  get validator => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(234, 12, 110, 110),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
            child: Column(
              key:_globalKey
              children: [
                TextFormField(
                  onChanged: ((value) {
                    first = int.parse(value);
                  }),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter First Field',
                  ),
                ),
                validator:(value){
                  if(value == null || value.isEmpty){
                    return 'please enter first number'
                  }
                  return null;
          
                }
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: ((value) {
                    second = int.parse(value);
                  }),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Second Field',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if(_globalKey.currentState!.validate()){}
                      _add();
                      // setState(() {
                      //   result = first + second;
                      // });
                    },
                    child: const Text('Add'),
                  ),
                ),
                Text(
                  'Sum is : $result',
                )
              ],
            ),
          ),
        ));
  }
}