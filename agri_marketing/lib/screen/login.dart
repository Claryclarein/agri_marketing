import 'package:agri_marketing/screen/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                "Fill in your details ",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              //styling
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
                height: 1,
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
              SizedBox(
                height: 1,
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
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) => Order())));
                },
                child: const Text(
                  "LOGIN",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
