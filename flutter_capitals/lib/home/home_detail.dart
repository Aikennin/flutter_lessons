import 'package:flutter/material.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Detail'), // Замените AppBarTitile на Text
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Bishkek'),
          Image.network('https://www.photohound.co/images/1018113l.jpg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Обработчик нажатия для Kyrgyzstan
                },
                child: const Text('Kyrgyzstan'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Обработчик нажатия для Kazakhstan
                },
                child: const Text('Kazakhstan'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Обработчик нажатия для Uzbekistan
                },
                child: const Text('Uzbekistan'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Обработчик нажатия для Turkmenistan
                },
                child: const Text('Turkmenistan'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
