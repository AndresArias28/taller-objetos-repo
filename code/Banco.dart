import 'Usuario.dart';

class Banco {
  int? id_banco;
  String? nombre_banco;
  String? telefono_banco;
  String? correo_banco;
  List<Usuario>? _usuarios = [];

  //getter

  int? get idBanco => id_banco;
  String? get nombreBanco => nombre_banco;
  String? get telefonoBanco => telefono_banco;
  String? get correoBanco => correo_banco;

  //setter

  set idBanco(int? id_banco) => this.id_banco = id_banco;
  set nombreBanco(String? nombre_banco) => this.nombre_banco = nombre_banco;
  set telefonoBanco(String? telefono_banco) =>
      this.telefono_banco = telefono_banco;
  set correoBanco(String? correo_banco) => this.correo_banco = correo_banco;

  
}
