import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
              Colors.white,
              Colors.grey,
            ]),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 80),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Find Your",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Inspiration",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 80,
                width: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffd9d9d9),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Center(
                      child: Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'Promo Today',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/scaf.jpg'))),
                    width: 150,
                  ),
                  const SizedBox(
                    width: 39,
                  ),
                  Container(
                    height: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/hands.jpg'))),
                    width: 150,
                  ),
                ],
              ),
              Container(
                height: 230,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/moon.jpg')),
                  borderRadius: BorderRadius.circular(70),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
