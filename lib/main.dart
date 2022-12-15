import 'package:flutter/material.dart';

void main() {
  runApp(MyText());
}

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 190,
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: TextField(
                        controller: _controller2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)))),
                  ),
                ],
              ),
              TextField(
                controller: _controller3,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(
                  onPressed: () {
                    int ans = int.parse(_controller.text) +
                        int.parse(_controller2.text);
                    setState(() {
                      _controller3.text = ans.toString();
                    });
                  },
                  child: Text('+')),
              ElevatedButton(
                  onPressed: () {
                       int ans = int.parse(_controller.text) -
                        int.parse(_controller2.text);
                    setState(() {
                      _controller3.text=ans.toString();
                    });
                  },
                  child: Text('-')),
              ElevatedButton(
                  onPressed: () {
                  int ans=int.parse(_controller.text)*int.parse(_controller2.text);

                    setState(() {
                      _controller3.text=ans.toString();
                    });
                  },
                  child: Text('*')),
              ElevatedButton(
                  onPressed: () {
                   int  ans=int.parse(_controller.text)~/int.parse(_controller2.text);
                    setState(() {
                      _controller3.text=ans.toString();
                    });
                  },
                  child: Text('/')),
            ],
          ),
        ),
      ),
    );
  }
}
