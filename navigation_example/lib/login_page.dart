import 'paket:flutter/material.dart';
import  'package: navigation_example / main_page.dart' ;

class  LoginPage  memperluas  StatelessWidget {
  @mengesampingkan
  Widget  membangun ( BuildContext konteks) {
    kembali  Perancah (
      tubuh :  Pusat (
        anak :  RaisedButton (
          anak :  Teks ( "LOGIN" ),
          onPressed : () {
            Navigator . pushReplacement (konteks,
                MaterialPageRoute (builder : (konteks) {
              return  MainPage ();
            }));
          },
        ),
      ),
    );
  }
}