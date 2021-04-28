import 'dart:ui';

import 'package:flutter/material.dart';

import 'textveinput.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Uygulaması',
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF151026);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        centerTitle: true,
        title: Text('Login'),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  bool _isObscure = true;
  var kullaniciAdi, sifre;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  loginButton() {
    kullaniciAdi = t1.text;
    sifre = t2.text;
    if (kullaniciAdi == "admin" && sifre == "sifre") {
      print("Login Başarılı");
    } else {
      print("Karpuz");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.all(150.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xffee9595), Color(0xffff7b54)],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        )),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xff222831))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text('Username:  ', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Password:  ', style: TextStyle(fontSize: 15)),
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 35,
                        child: TextField(
                          controller: t1,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 35,
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            controller: t2,
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })),
                          ))
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 10,
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: loginButton, child: Text('Login')),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('You are new here ? '),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KayitEkraniMain(),
                    ),
                  );
                },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Colors.blueAccent)),
            Text(' now!')
          ])
        ]));
  }
}
