import 'dart:io';

import 'package:dart_application_1/data.dart';

import 'videogame.dart';

void main(List<String> args) {
  start();
}

void start() {
  //Empieza el programa y muestra una listo de opciones a el usuario
  List<Map> videogames = createGames();
  switch (int.parse(stdin.readLineSync().toString())) {
    case 1:
      showAll(videogames);
      break;
    case 2:
      //searchBy(videogames);
      break;
    default:
  }
}

void showAll(List videogames) {
  print(getGames());
}

void searchBy(List<Map> videogames, String key) {
  //Búsqueda por cada uno de los atributos
  //videogames.where();
}

List<Map> createGames() {
  //Método para cargar los videojuegos en la coleccion inicial
  List<Videogame> videogames = getGames();
  List<Map> aux = [];
  for (var v in videogames) {
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
