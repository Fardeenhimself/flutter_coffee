import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Coffee Strength: '),
            Text('3'),
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 20.0,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                //sda
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 10),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                //sda
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        Row(
          children: [
            Text('Sugar Cubes: '),
            Text('3'),
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 20.0,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                //sda
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 10),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                //sda
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
