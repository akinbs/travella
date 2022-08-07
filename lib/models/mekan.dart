class Mekan {
  final String _mekanIsmi;

  get mekanIsmi => this._mekanIsmi;


  final String _mekanturu;

  get mekan_turu => this._mekanturu;

  final String _kucukResim;

  get kucukResim => this._kucukResim; //app bar background images te kullanıcam

  static List Tur_values = [];

  get turvalues => Tur_values;

  final String _googleMapsUrl;

  get googleMapsUrl => _googleMapsUrl;

  final double _rateValue;

  get rateValue => _rateValue;

  final double _latitude;

  get latitude => _latitude;

  final double _longitude;

  get longitude => _longitude;


  //final String header; zaten var

  /*
  double rateValue; //gezi yerinin yorumlara göre oluşturulan puanı
  final String galleryPhoto1;
  final String galleryPhoto2;
  final String galleryPhoto3;
   */
  //final double latitude; zaten var
  //final double longitude; zaten var
  //final String googleMapsUrl; zaten var

  Mekan(
    this._mekanIsmi,
    this._mekanturu,
    this._kucukResim,
    this._googleMapsUrl,
    this._rateValue,
    this._latitude,
    this._longitude,
  );
}
