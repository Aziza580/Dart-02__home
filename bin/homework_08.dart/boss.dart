import 'game_character.dart';
import 'super_ability.dart';
import 'rpg_game.dart';
import 'heroes.dart';

class Boss extends GameCharacter {
  SuperAbility? defence;
  bool isStunned = false;

  Boss(super.health, super.damage, super.name);

  void chooseDefence() {
    List<SuperAbility> variants = SuperAbility.values;
    int randomIndex = RpgGame.random.nextInt(variants.length); // 0,1,2,3
    defence = variants[randomIndex];
  }

  void attack(List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive()) {
        if (hero is Berserk && defence != hero.ability) {
          int block = (RpgGame.random.nextInt(2) + 1) * 5; // 5 or 10
          hero.blockedDamage = block;
          hero.health -= (damage - block);
        } else {
          hero.health -= damage;
        }
      }
    }
    Hero golem;
    for(var hero in heroes) {
      if (hero is Golem && hero.isAlive()) {
        golem = hero;
        break;
      }
      int redirectedDamage = damage ~/ 5;
    }
    for (var hero in heroes) {
    if (hero is Lucky) {
      if (RpgGame.random.nextInt(100) < 25) {
        hero.health = hero.health;
        print('Lucky ${hero.name} dodged the attack!');
        continue;
      } 
        hero.health -= damage;
    }
  }
  }

  @override
  String toString() {
    return 'BOSS ${super.toString()} defence: ${defence == null ? "No defence" : defence!.name}';
  }
}
