import 'paket:flutter/material.dart';

class  SecondPage  memperluas  StatelessWidget {
  @mengesampingkan
  Widget  membangun ( BuildContext konteks) {
    kembali  Perancah (
      appBar :  AppBar (
        judul :  Teks ( "Halaman Kedua" ),
      ),
      tubuh :  Pusat (
        anak :  RaisedButton (
          anak :  Teks ( "kembali" ),
          onPressed : () {
            Navigator . pop (konteks);
          },
        ),
      ),
    );
  }
}