import 'boss.dart';
import 'heroes.dart';
import 'dart:math';

class RpgGame {
  static Random random = Random();
  static int roundNumber = 0;

  static void startGame() {
    Boss boss = Boss(1000, 50, 'Dark Souls');

    Warrior warrior1 = Warrior(290, 15, 'Ahiles');
    Warrior warrior2 = Warrior(280, 20, 'Maximus');
    Magic magic = Magic(270, 15, 'Merlin');
    Medic doc = Medic(250, 5, 'Jim', 15);
    Medic assistant = Medic(300, 5, 'Junior', 5);
    Berserk berserk = Berserk(260, 10, 'Conan');
    Golem golem = Golem(600, 5, 'Bun'); //Имя дала моя младшая сестра
    Lucky lucky = Lucky(280, 20, 'Fayola');
    Witcher witcher = Witcher(290, 0, 'Jack');
    Thor thor = Thor(290, 20, 'Thor');

    List<Hero> heroes = [warrior1, warrior2, magic, doc, assistant, berserk, golem, lucky, witcher, thor];

    printStatistics(boss, heroes);
    while (!isGameOver(boss, heroes)) {
      playRound(boss, heroes);
    }
  }

  static bool isGameOver(Boss boss, List<Hero> heroes) {
    if (!boss.isAlive()) {
      print('Heroes won!!!');
      return true;
    }
    bool allHeroesDead = true;
    for (var hero in heroes) {
      if (hero.isAlive()) {
        allHeroesDead = false;
        break;
      }
    }
    if (allHeroesDead) {
      print('Boss won!!!');
      return true;
    }
    return false;
  }

  static void printStatistics(Boss boss, List<Hero> heroes) {
    print('ROUND $roundNumber ------------');
    print(boss);
    for (var hero in heroes) {
      print(hero);
    }
  }

  static void playRound(Boss boss, List<Hero> heroes) {
    roundNumber++;
    boss.chooseDefence();
    if ( boss.isStunned ) {
      print('Boss is stunned!');
      boss.isStunned = false;
    } else {
      boss.attack(heroes);
    }
    boss.attack(heroes);
    for (var hero in heroes) {
      if (hero.isAlive() && boss.isAlive() && boss.defence != hero.ability) {
        hero.attack(boss);
        hero.applySuperPower(boss, heroes);
      }
    }
    printStatistics(boss, heroes);
  }
}
