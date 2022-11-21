import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //To handle form input changes
  final _FormKey = GlobalKey<FormState>();
  var isloading = false;

  void _submit() {
    final isValid = _FormKey.currentState?.validate;
    if (isValid != null) {
      return;
    }
    _FormKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        //form
        child: Form(
          key: _FormKey,
          child: Column(
            children: <Widget>[
              const Text(
                "Register here ",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              //styling
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  icon: Icon(
                    Icons.person,
                  ),
                ),
                keyboardType: TextInputType.text,
                onFieldSubmitted: (value) {},
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Your Name ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'E-Mail', icon: Icon(Icons.email)),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  //Validator
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
              ),
              //box styling
              SizedBox(
                height: 5,
              ),
              //phone number
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  icon: Icon(
                    Icons.call,
                  ),
                ),
                keyboardType: TextInputType.number,
                onFieldSubmitted: (value) {},
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Phone Number';
                  }
                  return null;
                },
              ),
              //text input
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Password', icon: Icon(Icons.lock)),
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {},
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              //text input
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Confirm Password', icon: Icon(Icons.lock)),
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {},
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password does not match!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                child: const Text(
                  "SIGNUP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ))),
                onPressed: () => _submit(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
