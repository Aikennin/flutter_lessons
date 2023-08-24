import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffadb5bd),
        title: const Text('My first assets'),
        titleTextStyle: const TextStyle(
          color: Color(0xff023047),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        elevation: 5,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/lily.jpg',
                ),
                fit: BoxFit.cover)),
        child: const Column(
          children: [
            Text(
              'Sleeping Yuono Gasai',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xff023047),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff457b9d),
        foregroundColor: Colors.red,
        child: const Icon(Icons.arrow_right_alt),
        onPressed: () {},
      ),
    );
  }
}
