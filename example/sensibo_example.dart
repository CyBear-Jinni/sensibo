import 'package:sensibo/sensibo.dart';

Future<void> main() async {
  // Generate key from https://home.sensibo.com/me/api
  String apiKey = 'YourApiKey';
  SensiboUtilties sensiboUtil = SensiboUtilties(apiKey);
  List<SensiboBase> devices = await sensiboUtil.getDevices();

  for (final SensiboBase device in devices) {
    if (device is SensiboSky) {
      print(await SensiboSky.turnOn(
          apiKey: apiKey, sensibo: sensiboUtil.sensibo, id: device.id));
    }
  }
}
