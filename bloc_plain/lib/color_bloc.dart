import  'dart: async' ;
impor  'paket: flutter / material.dart' ;

enum  ColorEvent {to_amber, to_light_blue}

kelas  ColorBloc {
  Warna _warna =  Warna .amber;

  StreamController < ColorEvent > _eventController =
      StreamController < ColorEvent > ();
  StreamSink < ColorEvent >  get  eventSink => _eventController.sink;

  StreamController < Color > _stateController =  StreamController < Color > ();
  StreamSink < Color >  get  _stateSink => _stateController.sink;
  Aliran < Color >  get  stateStream => _stateController.stream;

  void  _mapEventToState ( ColorEvent colorEvent) {
    if (colorEvent ==  ColorEvent .to_amber)
      _color =  Warna .amber;
    lain
      _color =  Warna .lightBlue;

    _stateSink. tambahkan (_color);
  }

  ColorBloc () {
    _eventController.stream. mendengarkan (_mapEventToState);
  }

  batal  buang () {
    _eventController. dekat ();
    _stateController. dekat ();
  }
}