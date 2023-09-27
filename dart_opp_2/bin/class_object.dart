void main(List<String> args) {
  Manky kingkong = Manky();
  kingkong.name = 'manky';

  Manky kinkong = Manky();
  kinkong.name = 'kinkong';

  Cat bella = Cat();
  bella.name = 'bella';

  bella.unChygar();
}

class Manky {
  String? name;
  void unChygar() {
    print('uaaaaaa');
  }
}

class Cat {
  String? name;

  void unChygar() {
    print('miyau, miyau');
  }
}
