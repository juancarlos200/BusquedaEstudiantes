import 'nodo.dart';
import 'estudiante.dart';

class ArbolBinarioBusqueda {

  Nodo? raiz;

  // INSERTAR
  void insertar(Estudiante estudiante) {

    raiz = _insertarRec(raiz, estudiante);
  }

  Nodo _insertarRec(
      Nodo? nodo,
      Estudiante estudiante) {

    if (nodo == null) {

      return Nodo(estudiante);
    }

    if (estudiante.carnet <
        nodo.estudiante.carnet) {

      nodo.izquierda = _insertarRec(
          nodo.izquierda,
          estudiante);

    } else if (estudiante.carnet >
        nodo.estudiante.carnet) {

      nodo.derecha = _insertarRec(
          nodo.derecha,
          estudiante);
    }

    return nodo;
  }

  // BUSCAR
  Estudiante? buscar(int carnet) {

    Nodo? resultado =
        _buscarRec(raiz, carnet);

    if (resultado != null) {

      return resultado.estudiante;
    }

    return null;
  }

  Nodo? _buscarRec(
      Nodo? nodo,
      int carnet) {

    if (nodo == null ||
        nodo.estudiante.carnet ==
            carnet) {

      return nodo;
    }

    if (carnet <
        nodo.estudiante.carnet) {

      return _buscarRec(
          nodo.izquierda,
          carnet);
    }

    return _buscarRec(
        nodo.derecha,
        carnet);
  }

  // MOSTRAR EN ORDEN
  void mostrarEnOrden() {

    _inOrden(raiz);
  }

  void _inOrden(Nodo? nodo) {

    if (nodo != null) {

      _inOrden(nodo.izquierda);

      print(
          "\nCarnet: ${nodo.estudiante.carnet}");
      print(
          "Nombre: ${nodo.estudiante.nombre}");
      print(
          "Carrera: ${nodo.estudiante.carrera}");

      _inOrden(nodo.derecha);
    }
  }
}