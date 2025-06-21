class ButtonFunctions {
  ButtonFunctions({required this.strength, required this.sugar});

  int strength;
  int sugar ;

  void increaseStrength() {
    strength = strength < 5 ? strength + 1 : 1;
  }

  void decreaseStrength() {
    strength = strength > 1 ? strength - 1 : 1;
  }

  void increaseSugar() {
    sugar = sugar < 5 ? sugar + 1 : 0;
  }

  void decreaseSugar() {
    sugar = sugar > 0 ? sugar - 1 : 0;
  }
}
