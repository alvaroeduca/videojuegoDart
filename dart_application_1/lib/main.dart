import 'package:dart_application_1/data.dart';

import 'Videojuego.dart';

void main(List<String> args) {
  start();
}

void start() {
  //Empieza el programa y muestra una listo de opciones a el usuario
  List<Map> videogames = createGames();
  switch (input) {
    case 1:
      showAll(videogames);
      break;
    case 2:
      searchBy(videogames);
      break;
    default:
  }
}

void showAll(List games) {
  print(games);
}

void searchBy(List<Map> videogames, String key) {
  //Búsqueda por cada uno de los atributos
  videogames.where();
}

List<Map> createGames() {
  //Método para cargar los videojuegos en la coleccion inicial
  List<Videojuego> videojuegos = getGames();
  List<Map> aux = [];
  for (var v in videojuegos) {
    aux.add({
      "Name": v.name,
      "Company": v.company,
      "Saga": v.saga,
      "Release": v.release,
      "Category": v.category,
      "Age Clasification": v.age,
      "Synopsis": v.synopsis,
      "Main Characters": v.mains
    });
  }
  return aux;
}
