import  ' paket: blok / blok. panah ' ;
import  'dart : async ' ;
impor  'paket: flutter / material.dart' ;
impor  'paket: bloc / bloc.dart' ;

enum  ColorEvent {to_amber, to_light_blue }
enum  ColorEvent {to_amber, to_lightBlue }

kelas  ColorBloc  memperluas  Bloc < ColorEvent , Color > {
  Warna _warna =  Warna .amber;

  @mengesampingkan
  Warna  mendapatkan  initialState => Warna .amber;
  ColorBloc ({ Color initialState =  Colors .amber}) :  super (initialState);

  @mengesampingkan
  Alirkan < Color >  mapEventToState ( acara ColorEvent ) asinkron * {
  45  bloc_blocflutterpackage / lib / main.dart 
@@ -1,31 +1,47 @@
impor  'paket: bloc_blocflutterpackage / color_bloc.dart' ;
impor  'paket: flutter / material.dart' ;
impor  'paket: flutter_bloc / flutter_bloc.dart' ;
impor  'paket: bloc_blocflutterpackage / color_bloc.dart' ;

void  main () =>  runApp ( MyApp ());

class  MyApp  memperluas  StatelessWidget {
  @mengesampingkan
  Widget  membangun ( BuildContext konteks) {
    return  MaterialApp (
      beranda :  BlocProvider < ColorBloc > (
          builder : (konteks) =>  ColorBloc (), anak :  MainPage ()),
      beranda :  BlocProvider (
        buat : (_) =>  ColorBloc (),
        anak :  MainPage (),
      ),
    );
  }
}

class  MainPage  memperluas  StatelessWidget {
  @mengesampingkan
  Widget  membangun ( BuildContext konteks) {
    Blok ColorBloc =  BlocProvider . dari < ColorBloc > (konteks);
    kembali  Perancah (
      appBar :  AppBar (
        judul :  Teks ( 'BLoC dengan flutter_bloc' ),
      ),
      tubuh :  Pusat (
        anak :  BlocBuilder < ColorBloc , Color > (
          builder : (context, currentState) =>  AnimatedContainer (
            Durasi :  Durasi (
              milidetik :  500 ,
            ),
            lebar :  100 ,
            tinggi :  100 ,
            warna : currentState,
          ),
        ),
      ),
      floatingActionButton :  Baris (
        mainAxisAlignment :  MainAxisAlignment .end,
        anak-anak :  < Widget > [
        anak-anak : [
          FloatingActionButton (
            backgroundColor :  Warna .amber,
            onPressed : () {
              blok. pengiriman ( ColorEvent .to_amber);
              konteks. baca < ColorBloc > (). tambahkan ( ColorEvent .to_amber);
            },
          ),
          SizedBox (
@@ -34,23 +50,10 @@ class MainPage memperluas StatelessWidget {
          FloatingActionButton (
            backgroundColor :  Warna .lightBlue,
            onPressed : () {
              blok. pengiriman ( ColorEvent . to_light_blue );
              konteks. baca < ColorBloc > (). tambahkan ( ColorEvent . to_lightBlue );
            },
          )
        ],
      ),
      appBar :  AppBar (
        judul :  Teks ( "BLoC dengan flutter_bloc" ),
      ),
      tubuh :  Pusat (
        anak :  BlocBuilder < ColorBloc , Color > (
          builder : (context, currentColor) =>  AnimatedContainer (
            lebar :  100 ,
            tinggi :  100 ,
            color : currentColor,
            Durasi :  Durasi (milidetik :  500 ),
          ),
        ) ,
        ] ,
      ),
    );
  }
}