// Raum 5

class Dragon {
  String name;
  int firePower;

  Dragon(this.name, this.firePower);

  int breatheFire(Dragon gegner) {
    if (firePower < 20) {
      print('$name hat nicht genug Feuerkraft');
      return 0;
    }

    firePower -= 20; // Reduziert Feuerkraft des Gegners

    int schaden = gegner.firePower >= 15 ? 15 : gegner.firePower; // Gibt schaden zurück
    gegner.firePower -= schaden;

    print("$name greift ${gegner.name} und verursacht $schaden Schaden");
    return schaden;

  }

  void rest() {
    firePower += 20;
    if (firePower > 100) firePower = 100;
    print("$name hat sich erholt und hat jetzt $firePower Feuerkraft");
  }

  void status() {
    print('$name hat $firePower Feuerkraft.');
  }
}



void main() {

  //1
  Dragon inferno = Dragon("Inferno", 100);
  Dragon frostwing = Dragon("Frostwing", 80);

  //2
  inferno.breatheFire(frostwing);
  frostwing.breatheFire(inferno);

  //3
  inferno.status();
  frostwing.status();

  //4
  inferno.rest();
  frostwing.rest();

  //5
  inferno.breatheFire(frostwing);
  frostwing.breatheFire(inferno);
  inferno.status();
  frostwing.status();






  
  
}