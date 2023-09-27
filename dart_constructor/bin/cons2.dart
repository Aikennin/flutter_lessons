void main(List<String> arguments) {
  var contact1 = Contact(
    name: 'Aiken',
    phoneNumber: '+996702077223',
    emailAddress: 'aikennurbolotovna',
  );

  print('Name: ${contact1.name}');
  print('Phone Number: ${contact1.phoneNumber}');
  print('Email Address: ${contact1.emailAddress}');
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

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      emailAddress: map['emailAddress'],
    );
  }
//метод контакт в мап
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'emailAddress': emailAddress,
    };
  }
}

