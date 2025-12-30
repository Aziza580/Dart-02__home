import 'device.dart';
import 'interfaces.dart';
import 'mixins.dart';

void main() {
  List<Device> devices = [SmartLamp('Jack', 5), SmartSpeaker('Alice', 50), SmartThermostat('Suzuki', 22)];

  for (var device in devices) {
    device.showInfo();
    device.turnOn();
  }


  if (Device is Adjustable) {
    (Device as Adjustable).increase();
  }

  if (Device is BatteryPowered) {
    (Device as BatteryPowered).showBattery();
  }

  print('All devices processed');
}