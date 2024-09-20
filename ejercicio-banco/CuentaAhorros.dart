import 'dart:io';

class CuentaAhorros {
  static int _consecutivo = 0;
  static int year = DateTime.now().year;

  late String _codigoCuenta;
  late DateTime _fecha_apertura;
  late double _saldo;

  CuentaAhorros() {
    this._saldo = 0;
    this._fecha_apertura = DateTime.now();
    this._codigoCuenta = CuentaAhorros.__generarCodigo();
  }

  static String __generarCodigo() {
    _consecutivo++;
    return "${year}-" "${_consecutivo}";
  }

  // Getters
  String get codigoCuenta => _codigoCuenta;
  DateTime get fechaApertura => _fecha_apertura;
  double get saldo => _saldo;

  //setter
  set fechaApertura(DateTime _fecha_apertura) =>
      this._fecha_apertura = _fecha_apertura;
  set saldo(double _saldo) => this._saldo = _saldo;

  crearCuenta() {
    print("Creando Cuenta de Ahorros");
    print("ingresa el saldo inicial: ");
    double saldo = double.parse(stdin.readLineSync()!);
    this._saldo = saldo;
    print("Cuenta creada con exito");
    print("_______===============__________");
  }

  retirarDinero(double valor, String codigo, List<CuentaAhorros> cuentas) {
    for (CuentaAhorros cuenta in cuentas) {
      if (cuenta._codigoCuenta == codigo) {
        if (cuenta.retirar(valor)) {
          print(
              "Retiro exitoso de la cuenta ${cuenta._codigoCuenta}. Nuevo saldo: ${cuenta.saldo}");
          print("================================");
          return true;
        } else {
          print("Saldo insuficiente en la cuenta ${cuenta._codigoCuenta}");
          print("================================");
          return false;
        }
      }
    }
  }

  bool retirar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      return true;
    }
    return false;
  }

  consignarDinero(double valor, String codigo, List<CuentaAhorros> cuentas) {
      for (CuentaAhorros cuenta in cuentas) {
      if (cuenta._codigoCuenta == codigo) { 
        print("Consignando cuenta ${cuenta._codigoCuenta}");
        cuenta._saldo += valor;
        print("Consignacion exitoso de la cuenta ${cuenta._codigoCuenta}. Nuevo saldo: ${cuenta._saldo}");
        print("================================");
      }
    }
  }
}