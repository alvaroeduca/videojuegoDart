// ignore: file_names
class Videojuego {
  late String nombre;
  late String compania;
  late String saga;
  late int anioLanzamiento;
  late String categoria;
  int clasificacionDeEdad;
  late String sinopsis;
  late String personajesPrincipales;

  Videojuego(
      this.nombre,
      this.compania,
      this.saga,
      this.anioLanzamiento,
      this.categoria,
      this.clasificacionDeEdad,
      this.sinopsis,
      this.personajesPrincipales);

  @override
  String toString() {
    return "Nombre: $nombre\nCompañia: $compania\nAño de lanzamiento: $anioLanzamiento\nSaga: $saga\nCategoria: $categoria\nClasificacion de edad: $clasificacionDeEdad\nSinopsis: $sinopsis\nPersonajes principales: $personajesPrincipales";
  }
}
