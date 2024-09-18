import 'CuentaAhorro.dart';

class Usuario {
  int? _id_usuario;
  String? _nombre;
  String? _identificacion;
  String? _correo_usuario;
  List<CuentaAhorro>? _cuentas=[];

  Usuario(this._id_usuario, this._nombre, this._identificacion, this._correo_usuario){
    this._id_usuario;
    this._nombre;
    this._identificacion;
    this._correo_usuario;
  }

  //setter

  set id_usuario(int? id) {
    this._id_usuario = id;
  }

  set cuentas(List<CuentaAhorro>? cuentas) {
    this._cuentas = cuentas;
  }

  set correo(String? correo) {
    this._correo_usuario = correo;
  }

  //getter

  int? get id_usuario => this._id_usuario;

  set nombre(String? nombre) {
    this._nombre = nombre;
  }

  String? get nombre => this._nombre;

  set identificacion(String? identificacion) {
    this._identificacion = identificacion;
  }

  String? get identificacion => this._identificacion;
}
