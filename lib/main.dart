import 'package:flutter/material.dart';
// import 'package:my_forms/domain/auth/value_validators.dart';

import 'package:my_forms/presentation/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


// String? validateEmail(String? formEmail) {
//   if (formEmail == null || formEmail.isEmpty)
//     return 'E-mail address is required.';

//   String pattern = r'\w+@\w+\.\w+';
//   RegExp regex = RegExp(pattern);
//   if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

//   return null;
// }

// String? validatePassword(String? formPassword) {
//   if (formPassword == null || formPassword.isEmpty)
//     return 'Password address is required.';

//   if (formPassword.length < 6) return 'Password too short';

//   return null;
// }
