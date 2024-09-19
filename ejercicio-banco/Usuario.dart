import 'CuentaAhorros.dart';

class Usuario {
  int? _id_usuario;
  int? _identificacion;
  String? _nombre_usuario;
  String? _corre_usuario;
  List<CuentaAhorros>? _cuentaAhorros = [];

  Usuario(this._id_usuario, this._identificacion, this._nombre_usuario, this._corre_usuario) {
    this._id_usuario;
    this._identificacion;
    this._nombre_usuario;
    this._corre_usuario;
  }

  set cuentaAhorros(List<CuentaAhorros>? cuentaAhorros) {
    this._cuentaAhorros = cuentaAhorros;
  }

  set idUsuario(int? id_usuario) {
    this._id_usuario = id_usuario;
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

  int? get idUsuario => _id_usuario;
  int? get identificacion => _identificacion; 
  String? get nombreUsuario => _nombre_usuario;
  String? get correoUsuario => _corre_usuario;



}
