import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffced4da),
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
                Colors.white,
                Colors.grey,
              ]),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Find Your",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Inspiration",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
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
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Promo Today',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/scaf.jpg'))),
                    width: 160,
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
                    width: 160,
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
