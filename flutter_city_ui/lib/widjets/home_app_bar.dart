import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 6),
                  ],
                  borderRadius: BorderRadius.circular(16)),
              child: Icon(
                Icons.start_rounded,
                size: 28,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Text(
                'South Korea,USA',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 6),
                  ],
                  borderRadius: BorderRadius.circular(16)),
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
