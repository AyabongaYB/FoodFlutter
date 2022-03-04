import 'package:flutter/material.dart';
import 'author_card.dart';
import 'package:fooderlich/card1.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String Recipe = 'Recipe';
  final String type = 'Smoothies';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //padding: const EdgeInsets.all(60),
        constraints: const BoxConstraints.expand(
          width: 370,
          height: 550,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          //color: Colors.lime, //dont need this
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Ayabonga Jex',
              title: 'Killer Chef',
              imageProvider: AssetImage('assets/author_katz.jpg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
