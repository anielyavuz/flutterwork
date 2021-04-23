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
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Chat Uygulaması'),
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

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hoşgeldiniz',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color(0xff222831))),
          Padding(
            padding:
                EdgeInsets.only(top: 20, left: 200, bottom: 10, right: 200),
            child: Row(
              children: [
                Text('Kullanıcı Adı:', style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                    child: TextField(
                  controller: t1,
                ))
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 20, left: 200, bottom: 10, right: 200),
            child: Row(
              children: [
                Text('Şifre', style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: TextField(
                    controller: t2,
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(onPressed: loginButton, child: Text('Login')),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You are new here ? '),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KayitEkrani(),
                        ),
                      );
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, onPrimary: Colors.blueAccent)),
                Text(' now!')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class KayitEkrani extends StatefulWidget {
  @override
  _KayitEkraniState createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  TextEditingController tEmail = TextEditingController();
  TextEditingController tUsername = TextEditingController();
  TextEditingController tPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
          width: 600,
          height: 400,
          child: Container(
            color: Colors.red,
            child: Column(
              children: [
                Text(
                  "Kayıt Ol",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("Email: "),
                    Expanded(
                        child: TextField(
                      controller: tEmail,
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RowYeni()
              ],
            ),
          )),
    ));
  }
}
