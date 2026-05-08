class Estudiante {

  int carnet;
  String nombre;
  String carrera;

  Estudiante(
    this.carnet,
    this.nombre,
    this.carrera,
  );

  void mostrarInfo() {

    print("Carnet: $carnet");
    print("Nombre: $nombre");
    print("Carrera: $carrera");
  }
}