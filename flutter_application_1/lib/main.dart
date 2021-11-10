import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OwOState());
  }
}

class OwOState extends StatefulWidget {
  const OwOState({Key? key}) : super(key: key);
  @override
  _MyOwOState createState() => _MyOwOState();
}

class _MyOwOState extends State<OwOState> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          decoration: InputDecoration(border: OutlineInputBorder()),
          controller: _controller,
        ),
        TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(_controller.text),
                    );
                  });
            },
            child: Icon(Icons.notification_important))
      ]),
    );
  }
}
