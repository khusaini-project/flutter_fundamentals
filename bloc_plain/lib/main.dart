impor  'paket: bloc_plain / color_bloc.dart' ;
impor  'paket: flutter / material.dart' ;

void  main () =>  runApp ( MyApp ());

class  MyApp  memperluas  StatefulWidget {
  @mengesampingkan
  _MyAppState  createState () =>  _MyAppState ();
}

kelas  _MyAppState  meluas  Negara < MyApp > {
  Blok ColorBloc =  ColorBloc ();

  @mengesampingkan
  batal  buang () {
    blok. buang ();
    super . buang ();
  }

  @mengesampingkan
  Widget  membangun ( BuildContext konteks) {
    return  MaterialApp (
      rumah :  Perancah (
        floatingActionButton :  Baris (
          mainAxisAlignment :  MainAxisAlignment .end,
          anak-anak :  < Widget > [
            FloatingActionButton (
              backgroundColor :  Warna .amber,
              onPressed : () {
                bloc.eventSink. tambahkan ( ColorEvent .to_amber);
              },
            ),
            SizedBox (
              lebar :  10 ,
            ),
            FloatingActionButton (
              backgroundColor :  Warna .lightBlue,
              onPressed : () {
                bloc.eventSink. tambahkan ( ColorEvent .to_light_blue);
              },
            )
          ],
        ),
        appBar :  AppBar (
          judul :  Teks ( "BLoC tanpa Library" ),
        ),
        tubuh :  Pusat (
          anak :  StreamBuilder (
            streaming : bloc.stateStream,
            initialData :  Colors .amber,
            builder : (konteks, snapshot) {
              return  AnimatedContainer (
                Durasi :  Durasi (milidetik :  500 ),
                lebar :  100 ,
                tinggi :  100 ,
                color : snapshot.data,
              );
            },
          ),
        ),
      ),
    );
  }
}