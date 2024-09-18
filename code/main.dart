import 'dart:io';

import 'CuentaAhorro.dart';

List<CuentaAhorro> cuentas = [];
void main() {
  int opcion;

  do {
    print("1. Crear Cuenta de Ahorros");
    print("2. Consignar Cuenta Ahorros");
    print("3. Retirar Cuenta Ahorros");
    print("4. Consultar Cuenta Por Código");
    print("5. listar Cuentas");
    print("6. Salir");

    stdout.write('Seleccione una opción: ');
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        crearCuenta();
        break;
      case 2:
        consignarCuenta();
        break;
      case 3:
        retirarCuenta();
        break;
      case 4:
        consultarCuentaPorId();
        break;
      case 5:
        listarCuentas();
        break;
      case 6:
        print("Saliendo...");
        break;
      default:
        print("Opcion incorrecta");
    }
  } while (opcion != 6);
}

void crearCuenta() {
  print("Creando Cuenta de Ahorros");
  print("ingresa el id de la cuenta");
  int codigo = int.parse(stdin.readLineSync()!);
  print("ingresa la fecha de apertura: ");
  String fecha = stdin.readLineSync()!;
  print("ingresa el saldo inicial: ");
  double saldo = double.parse(stdin.readLineSync()!);

  cuentas.add(CuentaAhorro(codigo, fecha, saldo));
}

void listarCuentas() {
  DateTime now = DateTime.now();
  for (CuentaAhorro cuenta in cuentas) {
    print("Cuenta: ${cuenta.codigoCuenta}");
    print("Fecha de apertura: ${cuenta.fecha_apertura}");
    print("Saldo: ${cuenta.saldo}");
    print(
        "Dias de antiguedad: ${now.difference(DateTime.parse(cuenta.fecha_apertura)).inDays}");
    print("===================================");
  }
}

void consultarCuentaPorId() {
  print("Digite el id de la cuenta que desea consultar");
  int id = int.parse(stdin.readLineSync()!);
  for (CuentaAhorro cuenta in cuentas) {
    if (cuenta.codigoCuenta == id) {
      print("Cuenta: ${cuenta.codigoCuenta}");
      print("Fecha de apertura: ${cuenta.fecha_apertura}");
      print("Saldo: ${cuenta.saldo}");
      return;
    }
  }
  print("Cuenta no encontrada");

}

void retirarCuenta() {
  print("Digite el id de la cuenta de la cual desea retirar");
  int id = int.parse(stdin.readLineSync()!);
  print("Digite el valor a retirar");
  double valor = double.parse(stdin.readLineSync()!);
  for (CuentaAhorro cuenta in cuentas) {
    if (cuenta.codigoCuenta == id) {
      if (cuenta.saldo >= valor) {
        cuenta.saldo -= valor;
        print("Retiro exitoso. Nuevo saldo: ${cuenta.saldo}");
      } else {
        print("Saldo insuficiente");
      }
      return;
    }
  }
  print("Cuenta no encontrada");
}



void consignarCuenta() {
  print("Digite el id de la cuenta a consignar");
  int id = int.parse(stdin.readLineSync()!);
  print("Digite el valor a consignar");
  double valor = double.parse(stdin.readLineSync()!);
  for (CuentaAhorro cuenta in cuentas) {
    if (cuenta.codigoCuenta == id) {
      cuenta.saldo += valor;
    }
  }
}
