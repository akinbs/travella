class mekan{ 
  final String _mekanIsmi;
  get mekanIsmi => this._mekanIsmi;

  final String _mekanDetay;
  get mekanDetay => this._mekanDetay;

  final String _mekanturu;
  get mekan_turu => this._mekanturu;

  final String _kucukResim;
  get kucukResim => this._kucukResim;

  final String _BuyukResim;
  get BuyukResim => this._BuyukResim;

  static  List Tur_values = [];
  get turvalues => Tur_values;



  mekan(this._mekanIsmi, this._mekanDetay,this._mekanturu, this._kucukResim, this._BuyukResim);
}