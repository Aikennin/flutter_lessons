void main(List<String> arguments) {
  var person1 = Person('jibek', 24, 'Aksy', 2, 'IT', 'Female');
  var person2 = PersonNamed(age: 18, job: 'flutter devoloper');
  var person3 = PersonNamedDefault();

  person1.taanyshuu();
  person2.taanyshuu();
  person3.taanyshuu();
}

class Person {
  Person(
    this.name,
    this.age,
    this.home,
    this.family,
    this.job,
    this.female,
  );
  String? name;
  int? age;
  String? home;
  int? family;
  String? job;
  String? female;

  void taanyshuu() {
    print(
        'Menin atym jibek,men 24 jashtamyn,men Aksydan bolom,men ui-buloom bar 2balam bar,kesibim boyuncha yuristmin birok APP IT kursun okup,flutter razrabotchik bolup ishteim');
  }
}

//named cons
class PersonNamed {
  PersonNamed({
    this.name,
    this.age,
    this.uni,
    this.kurs,
    this.job,
    this.language,
  });
  String? name;
  int? age;
  String? uni;
  int? kurs;
  String? job;
  int? language;

  void taanyshuu() {
    print(
        'Menin atym Aiken,18 jashtamyn,KGU uni okuim 1-kurs,flutter kursun 2 aidan beri okup kelem,azyrky ubakta ishtebeim,men 4 til bilem alar(kyrgyz,orus,anglis,korei tili)');
  }
}

//default cons
class PersonNamedDefault {
  PersonNamedDefault({
    this.name,
    this.age,
    this.home,
    this.family,
    this.job,
    this.female,
  });
  String? name;
  int? age;
  String? home;
  int? family;
  String? job;
  String? female;

  void taanyshuu() {
    print(
        '');
  }
}
