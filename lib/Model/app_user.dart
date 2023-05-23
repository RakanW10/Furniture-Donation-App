class AppUser {
  final String uid;
  final String emailAddress;
  final String name;
  final String phoneNumber;

  AppUser({
    required this.uid,
    required this.emailAddress,
    required this.name,
    required this.phoneNumber,
   
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      uid: json['uid'],
      emailAddress: json['emailAddress'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
    );
  }

  toJson() {
    return {
      'uid': uid,
      'emailAddress': emailAddress,
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }
}
