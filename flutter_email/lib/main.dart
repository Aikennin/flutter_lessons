import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff056C5C),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Task number 4',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Lily Kim',
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
            const SizedBox(height: 5),
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call),
                  SizedBox(width: 25),
                  Text(
                    '+996702077223',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 25),
                  Text(
                    'aikennurbolotovna@gmail.com',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
