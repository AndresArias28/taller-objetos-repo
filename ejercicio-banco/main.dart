import 'dart:io';
import 'Usuario.dart';
import 'CuentaAhorros.dart';

void main() {
  int opcion;
  Usuario objUsuario = new Usuario(1567, "Jorge", "jor@gmail.com");

  do {
    print("1. Crear cuenta de Ahorros");
    print("2. Retirar dinero Cuenta Ahorros");
    print("3. Consignar cuenta Ahorros");
    print("4. Consultar cuenta Por Código");
    print("5. listar cuentas");
    print("6. Salir");

    stdout.write('Seleccione una opción: ');
    opcion = int.parse(stdin.readLineSync()!);
    CuentaAhorros objCuenta = CuentaAhorros();

    switch (opcion) {
      case 1:
        //CuentaAhorros  miCuenta = CuentaAhorros();
        objCuenta.crearCuenta();
        objUsuario.agregarCuenta(objCuenta);
        break;

      case 2:
        print("ingrese el valor a retirar: ");
        double valor = double.parse(stdin.readLineSync()!);
        print("ingresa el codigo de la cuenta: ");
        String codigo = stdin.readLineSync()!;
        List<CuentaAhorros>? cuentas = objUsuario.cuentaAhorros;
        objCuenta.retirarDinero(valor, codigo, cuentas);
        break;

      case 3:
        print("ingresa el valor a consignar: ");
        double valor = double.parse(stdin.readLineSync()!);
        print("ingresa el codigo de la cuenta: ");
        String codigo = stdin.readLineSync()!;
        List<CuentaAhorros>? cuentas = objUsuario.cuentaAhorros;
        objCuenta.consignarDinero(valor, codigo, cuentas);
        break;

      case 4:
        print("ingresa el codigo a buscar: ");
        String codigo = stdin.readLineSync()!;
        objUsuario.consultarCuentaPorCodigo(codigo);
        break;

      case 5:
        objUsuario.listarCuentas();
        break;

      case 6:
        print("Saliendo...");
        break;

      default:
        print("Opcion incorrecta");
    }
  } while (opcion != 6);
}
