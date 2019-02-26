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
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/background.jpg')),
          ),
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
              SwitchListTile(
                  title: Text('Accept Terms'),
                  value: _acceptTerms,
                  onChanged: (bool value) {
                    setState(() {
                      _acceptTerms = value;
                    });
                  }),
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
