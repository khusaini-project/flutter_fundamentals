import 'paket:flutter/material.dart';
import  'packge: navigation_example / second_page.dart' ;

class  MainPage  memperluas  StatelessWidget {
  @mengesampingkan
  Widget  membangun ( BuildContext konteks) {
    kembali  Perancah (
      appBar :  AppBar (
        judul :  Teks ( "Halaman utama" ),
      ),
      tubuh :  Pusat (
        anak :  RaisedButton (
          anak :  Teks ( "Pergi ke Halaman Kedua" ),
          onPressed : () {
            Navigator . push (konteks, MaterialPageRoute (builder : (konteks) {
              return  SecondPage ();
            }));
          },
        ),
      ),
    );
  }
}