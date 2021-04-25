import 'package:flutter/material.dart';

class KayitEkrani extends StatefulWidget {
  @override
  _KayitEkraniState createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  TextEditingController email = TextEditingController();
  TextEditingController kullaniciAdi = TextEditingController();
  TextEditingController sifre = TextEditingController();
  TextEditingController sifreTekrar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Kayıt Ekranı"),
            ),
            backgroundColor: Colors.amberAccent,
            body: Center(
              child: SizedBox(
                  width: 600,
                  height: 400,
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Text(
                          "Kayıt Ol",
                          style: TextStyle(fontSize: 30),
                        ),
                        Row(
                          children: [
                            Text("Email  "),
                            Container(
                              width: 200,
                              child: TextField(
                                controller: email,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("Kullanıcı Adı:  "),
                            Container(
                              width: 200,
                              child: TextField(
                                controller: kullaniciAdi,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("Şifre  "),
                            Container(
                              width: 200,
                              child: TextField(
                                controller: sifre,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("Şifre Tekrar  "),
                            Container(
                              width: 200,
                              child: TextField(
                                controller: sifreTekrar,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                child: Text("Kayıt Ol"), onPressed: () {}),
                            SizedBox(width: 20),
                            ElevatedButton(
                                child: Text("Çıkış Yap"),
                                onPressed: () {
                                  Navigator.pop(context);
                                })
                          ],
                        )
                      ],
                    ),
                  )),
            )));
  }
}
