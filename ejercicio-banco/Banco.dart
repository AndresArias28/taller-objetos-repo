import 'Usuario.dart';

class Banco {
  //atributos
  int? _id_banco;
  String? _nombre_banco;
  String? _telefono_banco;
  String? _correo_banco;
  List<Usuario>? listaUsuarios = [];

  //constructor
  Banco(this._id_banco, this._nombre_banco, this._telefono_banco, this._correo_banco) {
    this._id_banco;
    this._nombre_banco;
    this._telefono_banco;
    this._correo_banco;
  }

  //metodos
  set idBanco(int? id_banco) {
    this._id_banco = id_banco;
  }

  set nombreBanco(String? _nombre_banco) {
    this._nombre_banco = _nombre_banco;
  }

  set telefonoBanco(String? _telefono_banco) {
    this._telefono_banco = _telefono_banco;
  }

  set correoBanco(String? _correo_banco) {
    this._correo_banco = _correo_banco;
  }

  //getters  
  int? get idbanco {
    return _id_banco;
  }

  String? get nombreBanco {
    return _nombre_banco;
  }

  String? get telefonoBanco {
    return _telefono_banco;
  }

  String? get correoBanco {
    return _correo_banco;
  }
}
