import 'dart:io';

import 'package:dart_application_1/data.dart';

import 'videogame.dart';

void main(List<String> args) {
  start();
}

void start() {
  //Empieza el programa y muestra una listo de opciones a el usuario
  List<Map> videogames = createGames();
  bool exit = false;

  print('''Este es un programa para buscar videojuegos
  ¿Que deseas hacer?
  1-Mostrar todos los videojuegos
  Ni idea- salir del programa''');

  do {
    switch (int.parse(stdin.readLineSync().toString())) {
      case 1:
        showAll(videogames);
        break;
      case 2:
        searchBy(videogames, "name");
        break;
      case 3:
        searchBy(videogames, "company");
        break;
      case 4:
        searchBy(videogames, "saga");
        break;
      case 5:
        searchBy(videogames, "release");
        break;
      case 6:
        searchBy(videogames, "category");
        break;
      case 7:
        searchBy(videogames, "age");
        break;
      default:
        exit = true;
        break;
    }
  } while (exit == false);
}

void showAll(List videogames) {
  print(getGames());
}

void searchBy(List<Map> videogames, String key) {
  //Búsqueda por cada uno de los atributos
  videogames.where();
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
