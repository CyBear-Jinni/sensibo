import 'package:sensibo/sensibo.dart';
import 'package:sensibo/src/api/devices/senesibo_base.dart';
import 'package:sensibo/src/api/devices/sensibo_sky.dart';

Future<void> main() async {
  String apiKey = ;
  SensiboUtilties sensiboUtil = SensiboUtilties(apiKey);
  List<SensiboBase> devices = await sensiboUtil.getDevices();

  for (final SensiboBase device in devices) {
    if (device is SensiboSky) {
      print(await device.turnOn(apiKey, sensiboUtil.sensibo));
    }
  }
}
