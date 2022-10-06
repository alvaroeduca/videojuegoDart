// ignore: file_names
class Videogame {
  String name;
  String company;
  String saga;
  int release;
  String category;
  int age;
  String synopsis;
  String mains;

  Videogame(this.name, this.company, this.saga, this.release, this.category,
      this.age, this.synopsis, this.mains);

  @override
  String toString() {
    return "\nNombre: $name\nCompañia: $company\nAño de lanzamiento: $release\nSaga: $saga\nCategoria: $category\nClasificacion de edad: $age\nSinopsis: $synopsis\nPersonajes principales: $mains\n";
  }
}
