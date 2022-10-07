class UserDetailsModel{
  final String name;
  final String email;
  final String uid;
  UserDetailsModel({required this.name, required this.email, required this.uid});

  Map<String,dynamic>getJson()=>{
    'name' : name,
    'email' : email,
    'uid' : uid,
  };
}