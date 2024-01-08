// import 'package:sensibo/src/api/generated_code/sensibo.swagger.dart';

import 'package:chopper/chopper.dart';

import 'api/generated_code/sensibo.swagger.dart';

class SensiboBaseApi {
  SensiboBaseApi() {
    sensibo = Sensibo.create(baseUrl: baseUrl);
  }

  late Sensibo sensibo;
  final Uri baseUrl = Uri.parse('https://home.sensibo.com/api/v2/');

  info() async {
    Response response = await sensibo.usersMePodsGet(fields: '*');

    print(response.body);
  }

  deviceIdGet(String deviceId) async {
    Response response = await sensibo.podsDeviceIdGet(deviceId: deviceId);
    print(response.body);
  }

  turnOn(String deviceId, AcStateObject body) async {
    Response response =
        await sensibo.podsDeviceIdAcStatesPost(deviceId: deviceId, body: body);
    print(response.body);
  }
}
