import 'package:my_forms/domain/auth/value_validators.dart';
import 'package:fpdart/fpdart.dart';

class EmailAddress {
  final IOEither value;
  factory EmailAddress(String val) => EmailAddress._(validateEmail(val));
  EmailAddress._(this.value);
}

class Password {
  final IOEither value;
  factory Password(String val) => Password._(validatePassword(val));
  Password._(this.value);
}
