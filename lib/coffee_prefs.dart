import 'package:coffee_app/styled_button.dart';
import 'package:flutter/material.dart';
import 'button_functions.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

  @override
  Widget build(BuildContext context) {
    var buttonFunctions = ButtonFunctions(strength: strength, sugar: sugar);
    return Column(
      children: [
        Row(
          children: [
            Text('Coffee Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 20.0,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: () {
                setState(() {
                  buttonFunctions.decreaseStrength();
                  strength = buttonFunctions.strength;
                });
              },
              child: Icon(Icons.remove),
            ),
            StyledButton(
              onPressed: () {
                setState(() {
                  buttonFunctions.increaseStrength();
                  strength = buttonFunctions.strength;
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        Row(
          children: [
            Text('Sugar Cubes: '),
            if (sugar == 0)
              Text('No Sugar', style: TextStyle(color: Colors.red)),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 20.0,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: () {
                setState(() {
                  buttonFunctions.decreaseSugar();
                  sugar = buttonFunctions.sugar;
                });
              },
              child: Icon(Icons.remove),
            ),
            StyledButton(
              onPressed: () {
                setState(() {
                  buttonFunctions.increaseSugar();
                  sugar = buttonFunctions.sugar;
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
