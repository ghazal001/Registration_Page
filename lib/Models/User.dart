import 'dart:convert';

class User{
  final String? name;
  final String email;
  final String? mobile;
  final String? country;
  final String password;


  User({
    this.name,
    required this.email,
    this.mobile,
    this.country,
    required this.password,

});

  Map<String,dynamic> ToMap(){
    return{
      'name':name,
      'email':email,
      'password':password,
      'mobile':mobile,
      'country':country
    };
  }

  String toJson() => json.encode(ToMap());

}