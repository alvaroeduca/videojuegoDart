// ignore: file_names
class Videojuego {
  String name;
  String company;
  String saga;
  int release;
  String category;
  int age;
  String synopsis;
  String mains;

  Videojuego(this.name, this.company, this.saga, this.release, this.category,
      this.age, this.synopsis, this.mains);

  @override
  String toString() {
    return "name: $name\nCompañia: $company\nAño de lanzamiento: $release\nSaga: $saga\ncategory: $category\nClasificacion de edad: $age\nsynopsis: $synopsis\nPersonajes principales: $mains";
  }
}
