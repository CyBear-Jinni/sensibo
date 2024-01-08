// import 'package:sensibo/src/api/generated_code/sensibo.swagger.dart';

import 'package:chopper/chopper.dart';
import 'package:sensibo/src/api/devices/senesibo_base.dart';
import 'package:sensibo/src/api/devices/sensibo_elements.dart';
import 'package:sensibo/src/api/devices/sensibo_sky.dart';

import 'api/generated_code/sensibo.swagger.dart';

class SensiboUtilties {
  SensiboUtilties(this.apiKey) {
    sensibo = Sensibo.create(baseUrl: baseUrl);
  }

  late Sensibo sensibo;
  final Uri baseUrl = Uri.parse('https://home.sensibo.com/api/v2/');
  final String apiKey;

  Future<List<SensiboBase>> getDevices() async {
    Response response =
        await sensibo.usersMePodsGet(fields: '*', apiKey: apiKey);

    List<SensiboBase> devices = [];
    Iterable<Map<String, dynamic>> devicesJson =
        (response.body['result'] as List).map((e) => e as Map<String, dynamic>);

    for (Map<String, dynamic> device in devicesJson) {
      String productModels = device['productModel'];

      if (productModels == SensiboProductModels.skyv2.name) {
        devices.add(SensiboSky.fromMap(device));
      } else if (productModels == SensiboProductModels.elements.name) {
        devices.add(SensiboElements.fromMap(device));
      }
    }

    return devices;
  }
}

enum SensiboProductModels {
  /// Controll AC
  skyv2,
  // Climet information
  elements,
}
