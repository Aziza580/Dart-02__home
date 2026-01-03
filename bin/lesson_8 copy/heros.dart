import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;

  Hero(super.health, super.damage, super.name, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int coeff = RpgGame.random.nextInt(3) + 2; // 2,3,4
    int criticalDamage = damage * coeff;
    boss.health -= criticalDamage;
    print('$name hits critically for $criticalDamage');
  }
}

class Magic extends Hero {
  Magic(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.boosting);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // TODO: implement boosting
  }
}

class Medic extends Hero {
  int healingPoints;

  Medic(int health, int damage, String name, this.healingPoints)
    : super(health, damage, name, SuperAbility.healing);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && hero != this) {
        hero.health += healingPoints;
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('$name reverted $blockedDamage damage back to Boss');
  }
}

class Ludoman extends Hero {
  int rollOfTheDice = 0;
  Ludoman(int health, int damage, String name) 
    : super(health, damage, name, SuperAbility.rollOfTheDice);

    @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int dice1 = RpgGame.random.nextInt(6) +1;
    int dice2 = RpgGame.random.nextInt(6) +1;

    print('$name rolled dices: 1 dice  - $dice1, 2 dice - $dice2');

    if (dice1 == dice2) {
      int rollOfTheDice = dice1 * dice2;
      boss.health -= rollOfTheDice;
      print('Lucky! $name took $rollOfTheDice HP from the boss');
    } else {
      int rollOfTheDice = dice1 + dice2;
      List<Hero> teammates = heroes.where((ludoman) => ludoman != this).toList();
      if(teammates.isEmpty) {
        print('$name has no teammates to damage');
        return;
      }
      int randomIndex = RpgGame.random.nextInt(teammates.length);
      Hero randomTeammate = teammates[randomIndex];
      randomTeammate.health -= rollOfTheDice;
      print('Unlucky! $name too $rollOfTheDice HP from the ${randomTeammate.name}');
    }
  }

}
