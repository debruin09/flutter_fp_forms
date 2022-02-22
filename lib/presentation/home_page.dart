import 'package:fpdart/fpdart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_forms/domain/auth/value_objects.dart';
import 'package:my_forms/domain/auth/value_validators.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final validatedState = useState("Unvalidated");
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: Form(
        key: _key,
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Column(children: [
              TextFormField(
                controller: emailController,
                validator: (_) => validateEmail(_)
                    .match(
                      (l) => l,
                      (r) => null,
                    )
                    .run(),
              ),
              TextFormField(
                controller: passwordController,
                validator: (String? value) => validatePassword(value)
                    .match((error) => error, (r) => null)
                    .run(),
              ),
              ElevatedButton(
                  child: Text('Sign Up'),
                  onPressed: () async {
                    final _isFormStateValid = _key.currentState!.validate();
                    if (_isFormStateValid) {
                      // form was succesfully validated
                      // attempt register user -> <Failure, Success>
                      // context
                      //     .read(userAuthFormProvider)
                      //     .createUserWithEmailAndPassword(EmailAddress(emailController.text),Password(passwordController.text));

                    } else {
                      // invalid form
                      validatedState.value = "Validation failed";
                    }
                  }),
              Text(validatedState.value),
            ]),
          ),
        ),
      ),
    );
  }
}
