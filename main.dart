import "dart:io";
import "country.dart";

void main() {

  City a1 = new City('Los Angeles', '4 million');
  List b1 = ['New York', 'Virginia', 'California', 'Florida', 'Hawaii'];
  Country c1 = new Country('USA', '350 million', b1, a1);
 
  City a2 = new City('Cancun', '700,000');
  List b2 = ['Durango', 'Puebla', 'Guerrero', 'Quintana Roo'];
  Country c2 = new Country('Mexico', '127 million', b2, a2);
    
  var countries = [c1, c2];
  
  var out = new File("log.txt").openWrite();
  
  for (Country c in countries) {
		out.write('Name: ' + c.name + "\n");
		out.write('Population: ' + c.population + "\n");
		out.write('Best States: ' + c.best_states.join(', ') + "\n");
		out.write("Top State Count: " + c.fav_count().toString() + "\n");
		out.write('Best City: ' + c.best_city.name + "\n");
		out.write(c.best_city.name + " Population: " + c.best_city.population);
    out.write("\n\n");
  }
  
  out.close();
}
