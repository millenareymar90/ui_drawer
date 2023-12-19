class User {
  String fName;
  String mName;
  String lName;

  User({
    required this.fName,
    required this.mName,
    required this.lName,
  });

  static List<User> user = [
    User(
      fName: 'Jesse Dan', 
      mName: 'P.', 
      lName: 'Bancale'
    )
  ];
}
