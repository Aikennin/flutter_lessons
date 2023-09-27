import 'package:flutter/material.dart';

import '../widjets/home_app_bar.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var category = [
    'Best Places',
    'Most Visted',
    "Favorites",
    "New Added",
    'Hotels',
    'Resutaurants',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/korea_city.png'),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'City Name',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final listImages = [
                      'usa.png',
                      'hollywood.png',
                      'hybe2.png',
                      'lasvegas.png',
                      'pusan2.png',
                      'seoul2.png'
                    ];
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/${listImages[index]}'),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'City Name',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
