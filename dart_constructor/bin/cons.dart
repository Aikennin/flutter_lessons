void main(List<String> arguments) {
  var contact1 = Contact(
    name: 'Aiken',
    phoneNumber: '+996702077223',
    emailAddress: 'aikennurbolotovna',
  );

  contact1.beruu();
}

class Contact {
  String name;
  String phoneNumber;
  String emailAddress;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
  });

  void beruu() {
    print('$name, $phoneNumber, $emailAddress');
  }
}
