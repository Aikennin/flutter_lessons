import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });
  List<String> imagePaths = [
    'assets/icons/asia.svg',
    'assets/icons/europe.svg',
    'assets/icons/africa.svg',
    'assets/icons/australia.svg',
    'assets/icons/north_america.svg',
    'assets/icons/south_america.svg',
  ];
  List<String> continentNames = [
    'Asia',
    'Europe',
    'Africa',
    'Australia',
    'North America',
    'South America',
  ];
  List<Color> imageColors = [
    const Color(0xff219ebc),
    const Color(0xff023e8a),
    const Color(0xff3a86ff),
    const Color(0xff48cae4),
    const Color(0xff00b4d8),
    const Color(0xff669bbc),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffced4da),
          title: const Text(
            'The capital of the world',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            // Text(
            //   'The capital of the world',
            //   style: TextStyle(color: Colors.black),
            // ),
            Icon(
              Icons.settings,
              color: Colors.black,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],

          elevation: 6,
          // leading: const Icon(
          //   Icons.settings,
          //   color: Colors.black,
          // ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 15),
              itemCount: 6,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                  child: Column(
                    children: [
                      Text(
                        (continentNames[index]),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          imagePaths[index],
                          color: imageColors[index],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}
