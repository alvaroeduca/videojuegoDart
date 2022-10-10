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
  ¿Que deseas hacer?''');

  int value = 0;

  do {
    print('''

  0- Salir
  1- Mostrar todos los videojuegos
  2- Mostrar juegos por nombre
  3- Mostrar juegos por compañia
  4- Mostrar juegos por saga
  5- Mostrar juegos por lanzamiento
  6- Mostrar juegos por categoria
  7- Mostrar juegos por año
  ''');

    value = int.parse(stdin.readLineSync().toString());

    switch (value) {
      case 1:
        showAll(videogames);
        break;
      case 2:
        searchBy(videogames, "Name");
        break;
      case 3:
        searchBy(videogames, "Company");
        break;
      case 4:
        searchBy(videogames, "Saga");
        break;
      case 5:
        searchBy(videogames, "Release");
        break;
      case 6:
        searchBy(videogames, "Category");
        break;
      case 7:
        searchBy(videogames, "Age Clasification");
        break;
      default:
        if (value == 0) {
          exit = true;

          print("Salimos del programa");
        } else if (value < 0 || value > 7) {
          print("La opcion elegida esta fuera del rango, intenta de nuevo");
        }
        break;
    }
  } while (exit == false);
}

void showAll(List videogames) {
  print(getGames());
}

void searchBy(List<Map> videogames, String key) {
  //Búsqueda por cada uno de los atributos
  print("\nIntroduzca el valor de busqueda:");

  dynamic search;

  if(key == "Release" || key == "Age Clasification"){
    search = int.parse(stdin.readLineSync().toString());
     videogames
      .where((map) => map[key] == search)
      .forEach((map) => ({print("\n$map \n")}));
  }else{
    search = stdin.readLineSync().toString().toLowerCase();
     videogames
      .where((map) => map[key].toString().toLowerCase().contains(search))
      .forEach((map) => ({print("\n$map \n")}));
  }

  print("Busqueda realizada con exito\n");
}

List<Map> createGames() {
  //Método para cargar los videojuegos en la coleccion inicial
  List<Videogame> videogames = getGames();
  List<Map> aux = [];
  for (Videogame v in videogames) {
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
