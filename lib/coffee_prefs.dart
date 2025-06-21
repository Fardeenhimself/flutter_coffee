import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void decreaseStrength() {
    setState(() {
      strength = strength > 1 ? strength - 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  void decreaseSugar() {
    setState(() {
      sugar = sugar > 0 ? sugar - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Coffee Strength: '),
            Text('$strength'),
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
                decreaseStrength();
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
                increaseStrength();
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        Row(
          children: [
            Text('Sugar Cubes: '),
            Text('$sugar'),
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
                decreaseSugar();
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
                increaseSugar();
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
