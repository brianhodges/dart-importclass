//Country
class Country {
  String name;
  String population;
  List   best_states;
  City   best_city;
  
  Country(String name, String population, List best_states, City best_city) {
    this.name = name;
    this.population = population;
    this.best_states = best_states;
    this.best_city = best_city;
  }
  
  int fav_count() { 
    return this.best_states.length;
  }
}

//City
class City {
  String name;
  String population;
  
  City(String name, String population) {
    this.name = name;
    this.population = population;
  }
}