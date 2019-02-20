import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'E-mail'),
            onChanged: (String value) {
              setState(() {
                _emailValue = value;
              });
            },
          ),
          TextField(
              onChanged: (String value) {
                setState(() {
                  _passwordValue = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password')),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {
              print(_emailValue);
              print(_passwordValue);
              Navigator.pushReplacementNamed(context, '/products');
            },
            child: Text('LOGIN'),
          ),
        ],
      )),
    );
  }
}
