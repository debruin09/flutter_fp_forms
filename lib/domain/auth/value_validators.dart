import 'package:fpdart/fpdart.dart';

RegExp emailRegex() {
  String pattern = r'\w+@\w+\.\w+';
  return RegExp(pattern);
}

IOEither<String, Unit> validateEmail(String? val) => fieldIsEmpty(val).flatMap(
      (successValue) => IOEither.fromPredicate(
        unit,
        (_) => emailRegex().hasMatch(successValue),
        (_) => "Invalid E-mail Address format.",
      ),
    );

IOEither<String, String> fieldIsEmpty(String? val) => IOEither.fromPredicate(
      val!,
      (v) => v.isNotEmpty,
      (_) => 'Field can not be empty',
    );

IOEither<String, Unit> validatePassword(String? pass) =>
    fieldIsEmpty(pass).flatMap(
      (successValue) => IOEither.fromPredicate(unit,
          (val) => !(successValue.length < 6), (_) => 'Password too short'),
    );
IOEither<String, Unit> emailTooShort(String? pass) =>
    fieldIsEmpty(pass).flatMap(
      (successValue) => IOEither.fromPredicate(
          unit, (val) => !(successValue.length < 15), (_) => 'Email too short'),
    );
