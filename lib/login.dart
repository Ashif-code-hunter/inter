import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFields(
              icons: const Icon(
                Icons.person,
                size: 30,
                color: Colors.black,
              ),
              pass: false),
          TextFields(
            icons: const Icon(
              Icons.password_rounded,
              size: 30,
              color: Colors.black,
            ),
            pass: true,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              null;
            },
            child: const Text(
              "Button",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
              elevation: MaterialStateProperty.all(4.0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 80.0),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              null;
            },
            child: const Text(
              "Already registered!!! Login",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black45,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  final Icon icons;
  final bool pass;
  TextFields(
      {this.pass = false,
      this.icons = const Icon(
        Icons.person,
        size: 30,
        color: Colors.black,
      )});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Color(0xffFAFAFA),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        leading: icons,
        title: TextField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          obscureText: pass,
          onChanged: null,
          decoration: const InputDecoration(
            hintText: 'Enter a value',
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 3.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
