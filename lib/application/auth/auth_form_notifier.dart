import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_forms/application/auth/auth_form_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_forms/domain/auth/value_objects.dart';

class AuthFormNotifier extends StateNotifier<AuthFormState> {
  AuthFormNotifier() : super(AuthFormState.initial);

  Unit createUserWithEmailAndPassword(
      EmailAddress emailAddress, Password pass) {
    state = AuthFormState.authenticated;

    return unit;
  }
}

final userAuthFormProvider =
    StateNotifierProvider<AuthFormNotifier, AuthFormState>(
  (ref) => AuthFormNotifier(),
);
