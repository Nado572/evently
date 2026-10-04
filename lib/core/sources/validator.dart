class Validator {
  static String? validateName(String? name){

if(name==null||name.trim().isEmpty){
  return "name is required";
}
else if (name.length<6){
  return "name is too short 6 char at least";
}
return null;
  }
  static String? validateEmail(String? email){
    RegExp emailexp =  RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (email == null || email.trim().isEmpty) {
    
      return "email is required";
    } else if (!emailexp.hasMatch(email)) {
      return "please enter your email correctly";
    }
    return null;
  }
  static String? validatePassword(String? password){
    RegExp passwordExp=  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',);
    if (password == null || password.trim().isEmpty) {
      return "pleas enter a password";
    } else if (password.length < 6) {
      return "password too short at least 6 char";
    }
    if (!passwordExp.hasMatch(password)) {
      return ("password is too weak");
    }
    return null;
  }

}