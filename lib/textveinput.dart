import 'package:flutter/material.dart';

class KayitEkraniMain extends StatefulWidget {
  @override
  _KayitEkraniMainState createState() => _KayitEkraniMainState();
}

class _KayitEkraniMainState extends State<KayitEkraniMain> {
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF151026);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: KayitEkrani(),
    );
  }
}

class KayitEkrani extends StatefulWidget {
  @override
  _KayitEkraniState createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  TextEditingController email = TextEditingController();
  TextEditingController kullaniciAdi = TextEditingController();
  TextEditingController sifre = TextEditingController();
  TextEditingController sifreTekrar = TextEditingController();

  var emailInput, usernameInput, passwordInput, passwordAgainInput;
  kayitOl() {
    emailInput = email.text;
    usernameInput = kullaniciAdi.text;
    passwordInput = sifre.text;
    passwordAgainInput = sifreTekrar.text;
    if (passwordInput == passwordAgainInput) {
      print("karpuz");
    } else {
      print("lütfen şifrenizi kontrol ediniz");
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
              Text('Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xff222831))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
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
                      Text('Email:  ', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Password:  ', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Password Again:  ', style: TextStyle(fontSize: 15)),
                    ],
                  )),
              Flexible(
                  flex: 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 35,
                        child: TextField(
                          controller: kullaniciAdi,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 35,
                          child: TextField(
                            controller: email,
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: false,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 35,
                          child: TextField(
                            controller: sifre,
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: true,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 35,
                          child: TextField(
                            controller: sifreTekrar,
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: true,
                          )),
                    ],
                  )),
              Flexible(
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
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: kayitOl, child: Text("Sign Up!"))
            ],
          ),
        ]));
  }
}
