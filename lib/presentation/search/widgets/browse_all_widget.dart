import 'dart:math';

import 'package:flutter/material.dart';

class BrowseAllWidget extends StatelessWidget {
  const BrowseAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: Text(
            'Browse all',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          childAspectRatio: 3.2,
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          children: List.generate(
            10,
            (index) => Container(
              height: 40,
              padding: EdgeInsets.only(
                left: 14,
                top: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Music',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: Stack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        Positioned(
                          top: 20,
                          right: 5,
                          child: Transform.rotate(
                            angle: pi * 35 / 180,
                            child: Image.network(
                              fit: BoxFit.fitWidth,
                              'https://t.scdn.co/images/495fadcefe234607b14b2db3381f3f5d.jpeg',
                              height: 70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
