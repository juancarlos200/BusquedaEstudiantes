import 'dart:io';

import 'estudiantes.dart';
import 'arbolBinario.dart';

void main() {

  ArbolBinarioBusqueda arbol =
      ArbolBinarioBusqueda();

  int opcion;

  do {

    print("\n===== SISTEMA =====");
    print("1. Registrar estudiante");
    print("2. Buscar estudiante");
    print("3. Mostrar estudiantes");
    print("4. Salir");

    stdout.write("Opción: ");
    opcion =
        int.parse(stdin.readLineSync()!);

    switch (opcion) {

      case 1:

        stdout.write("Carnet: ");
        int carnet =
            int.parse(stdin.readLineSync()!);

        stdout.write("Nombre: ");
        String nombre =
            stdin.readLineSync()!;

        stdout.write("Carrera: ");
        String carrera =
            stdin.readLineSync()!;

        Estudiante estudiante =
            Estudiante(
                carnet,
                nombre,
                carrera);

        arbol.insertar(estudiante);

        print(
            "\nEstudiante registrado.");
        break;

      case 2:

        stdout.write(
            "Ingrese carnet: ");

        int carnetBuscar =
            int.parse(stdin.readLineSync()!);

        Estudiante? encontrado =
            arbol.buscar(carnetBuscar);

        if (encontrado != null) {

          print(
              "\n===== ESTUDIANTE =====");

          encontrado.mostrarInfo();

        } else {

          print(
              "\nNo encontrado.");
        }

        break;

      case 3:

        print(
            "\n===== LISTA =====");

        arbol.mostrarEnOrden();

        break;

      case 4:

        print("\nSaliendo...");
        break;

      default:

        print("\nOpción inválida.");
    }

  } while (opcion != 4);
}