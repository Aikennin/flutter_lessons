void main() {
  Animal manky = Animal();
  print(manky);

  manky.aty = 'KInkong';
  manky.age = 4;
  manky.color = 'yellow';
  manky.ui = 4;
  manky.uibuloo = 'bir tuugandary 4';

  print(manky.aty);
  print(manky.age);
  print(manky.color);
  print(manky.ui);
  print(manky.uibuloo);

  manky.kyikyrat();
  manky.urat();
}

class Animal {
  String? aty;
  int? age;
  String? color;
  int? ui;
  String? uibuloo;

  void kyikyrat() {
    print('janybarlar menen mushtashat');
  }

  void urat() {
    print('adamdard korup,kubalap urat');
  }
}
