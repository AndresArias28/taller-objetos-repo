import 'CuentaAhorros.dart';

class Usuario {
  int? _identificacion;
  String? _nombre_usuario;
  String? _corre_usuario;
  late List<CuentaAhorros> _cuentaAhorros = [];

  Usuario(this._identificacion, this._nombre_usuario, this._corre_usuario) {
    this._identificacion;
    this._nombre_usuario;
    this._corre_usuario;
  }

  set cuentaAhorros(List<CuentaAhorros> cuentaAhorros) {
    this._cuentaAhorros = cuentaAhorros;
  }

  set identificacion(int? identificacion) {
    this._identificacion = identificacion;
  }

  set nombreUsuario(String? nombre_usuario) {
    this._nombre_usuario = nombre_usuario;
  }

  set correoUsuario(String? corre_usuario) {
    this._corre_usuario = corre_usuario;
  }

  int? get identificacion => _identificacion;
  String? get nombreUsuario => _nombre_usuario;
  String? get correoUsuario => _corre_usuario;
  List<CuentaAhorros> get cuentaAhorros => _cuentaAhorros;

  agregarCuenta(CuentaAhorros cuentaAhorros) {
    this._cuentaAhorros.add(cuentaAhorros);
  }

  consultarCuentaPorCodigo(String id) {
    for (CuentaAhorros cuenta in this._cuentaAhorros) {
      // print("hola" ${cuenta});
      // print("el numero de cuenta es $id  y  el  otro es ${this._cuentaAhorros}");

      // if (cuenta.codigoCuenta == id) {
      print("Cuenta: ${cuenta.codigoCuenta}");
      //   print("Fecha de apertura: ${cuenta.fechaApertura}");
      //   print("Saldo: ${cuenta.saldo}");
      //   print("================================");
      // }
    }
    print("==================================");
  }

  void listarCuentas() {
    for (CuentaAhorros cuenta in this._cuentaAhorros) {
      print("Cuenta: ${cuenta.codigoCuenta}");
      print("Fecha de apertura: ${cuenta.fechaApertura}");
      print("Saldo: ${cuenta.saldo}");
      print("==================================");
    }
  }
}