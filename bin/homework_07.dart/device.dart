import 'interfaces.dart';
import 'mixins.dart';

abstract class Device implements Switchable { //"Любое устройство ОБЯЗАНО уметь вкл и выкл"
  final String name;
  Device(this.name);
  void showInfo() {
    print('Device: $name');
  }
}

class SmartLamp extends Device with BatteryPowered implements Adjustable {
int brightness = 0;
SmartLamp(super.name, this.brightness); //Конструктор

void turnOn() {
  print('Lamp $name is ON');
}

void turnOff() {
  print('Lamp $name is OFF');
}

void increase() {
  if (brightness < 100) {
    brightness += 10;
  }
}

void decrease() {
  if (brightness > 0) {
    brightness -= 10;
  }
}

@override
  void showInfo() {
    super.showInfo();
    print('Device: $name. Brightness: $brightness');
  }
}

class SmartSpeaker extends Device with BatteryPowered implements Adjustable {
  int volume = 0;
  SmartSpeaker(super.name, this.volume);

  void turnOn() {
    print('Speaker $name is ON');
  }

  void turnOff() {
    print('Speaker $name is OFF');
  }

  void increase() {
    if (volume < 100) {
    volume += 5;
  }
  }

  void decrease() {
    if (volume > 0) {
    volume -= 5;
  }
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Device: $name. Volume: $volume');
  }
  }

  class SmartThermostat extends Device {
    int temperature;
    SmartThermostat(super.name, this.temperature);

    void turnOn() {
       print('Thermostat $name is ON');
    }

    void turnOff() {
       print('Termostat $name is OFF');
    }

    @override
  void showInfo() {
    super.showInfo();
    print('Device: $name. Temperature: $temperature');
  }
  }
