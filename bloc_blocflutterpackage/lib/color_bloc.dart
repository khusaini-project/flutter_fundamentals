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
    _color = (event ==  ColorEvent .to_amber) ?  Warna .amber :  Warna .lightBlue;
    hasil _warna;
  }
}