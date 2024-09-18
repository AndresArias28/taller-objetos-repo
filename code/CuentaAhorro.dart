class CuentaAhorro {
  static int _contador = 0;
  int? _codigoCuenta;
  String? _fecha_apertura;
  double? _saldo;

  //constructor
  CuentaAhorro( this._codigoCuenta,this._fecha_apertura, this._saldo) {
    this._codigoCuenta = codigoCuenta;
    this._fecha_apertura = fecha_apertura;
    this._saldo = saldo;
    this._codigoCuenta = ++_contador;
  }

  //setter
  set codigo_cuenta(int _codigoCuenta) => this._codigoCuenta = _codigoCuenta;
  set fecha_apertura(String fecha_apertura) => this._fecha_apertura = fecha_apertura;
  set saldo(double saldo) => this._saldo = saldo;

  //getter
  int get codigoCuenta => this._codigoCuenta!;
  String get fecha_apertura => this._fecha_apertura!;
  double get saldo => this._saldo!;
}
