import 'package:chopper/chopper.dart';
import 'package:sensibo/src/api/devices/senesibo_base.dart';
import 'package:sensibo/src/api/generated_code/sensibo.swagger.dart';
import 'package:sensibo/src/sensibo_utilties.dart';

class SensiboSky extends SensiboBase {
  SensiboSky({
    required super.isGeofenceOnEnterEnabledForThisUser,
    required super.isClimateReactGeofenceOnEnterEnabledForThisUser,
    required super.isMotionGeofenceOnEnterEnabled,
    required super.isOwner,
    required super.minimumCoolingTemperature,
    required super.maximumHeatingTemperature,
    required super.restrictedMode,
    required super.shareDevice,
    required super.id,
    required super.qrId,
    required super.temperatureUnit,
    required super.room,
    required super.acState,
    required super.location,
    required super.connectionStatus,
    required super.firmwareVersion,
    required super.firmwareType,
    required super.productModel,
    required super.configGroup,
    required super.currentlyAvailableFirmwareVersion,
    required super.cleanFiltersNotificationEnabled,
    required super.shouldShowFilterCleaningNotification,
    required super.isGeofenceOnExitEnabled,
    required super.isClimateReactGeofenceOnExitEnabled,
    required super.isMotionGeofenceOnExitEnabled,
    required super.isCalibrating,
    required super.serial,
    required super.sensorsCalibration,
    required super.motionSensors,
    required super.tags,
    required super.timer,
    required super.schedules,
    required super.motionConfig,
    required super.filtersCleaning,
    required super.serviceSubscriptions,
    required super.roomIsOccupied,
    required super.mainMeasurementsSensor,
    required super.pureBoostConfig,
    required super.warrantyEligible,
    required super.features,
    required super.lastHealthcheck,
    required super.homekitSupported,
    required super.remoteCapabilities,
    required super.remote,
    required super.remoteFlavor,
    required super.remoteAlternatives,
    required super.smartMode,
    required super.measurements,
    required super.accessPoint,
    required super.macAddress,
    required super.autoOffMinutes,
    required super.autoOffEnabled,
    required super.antiMoldTimer,
    required super.antiMoldConfig,
    required super.powerConsumption,
    required super.acType,
    required super.lastRunEnergyConsumption,
    required super.acUsage,
    required super.optimusEnabled,
    required super.optimusInsights,
    required super.organization,
    required super.hasPolicy,
    required this.lastStateChange,
    required this.lastStateChangeToOn,
    required this.lastStateChangeToOff,
    required this.warrantyEligibleUntil,
  }) : super(type: SensiboProductModels.skyv2);

  factory SensiboSky.fromMap(Map<String, dynamic> map) => SensiboSky(
        isGeofenceOnEnterEnabledForThisUser:
            map['isGeofenceOnEnterEnabledForThisUser'],
        isClimateReactGeofenceOnEnterEnabledForThisUser:
            map['isClimateReactGeofenceOnEnterEnabledForThisUser'],
        isMotionGeofenceOnEnterEnabled: map['isMotionGeofenceOnEnterEnabled'],
        isOwner: map['isOwner'],
        minimumCoolingTemperature: map['minimumCoolingTemperature'],
        maximumHeatingTemperature: map['maximumHeatingTemperature'],
        restrictedMode: map['restrictedMode'],
        shareDevice: map['shareDevice'],
        id: map['id'],
        qrId: map['qrId'],
        temperatureUnit: map['temperatureUnit'],
        room: map['room'],
        acState: map['acState'],
        lastStateChange: DateTime.parse(map['lastStateChange']['time']),
        lastStateChangeToOn: DateTime.parse(map['lastStateChangeToOn']['time']),
        lastStateChangeToOff:
            DateTime.parse(map['lastStateChangeToOff']['time']),
        location: map['location'],
        connectionStatus: map['connectionStatus'],
        firmwareVersion: map['firmwareVersion'],
        firmwareType: map['firmwareType'],
        productModel: map['productModel'],
        configGroup: map['configGroup'],
        currentlyAvailableFirmwareVersion:
            map['currentlyAvailableFirmwareVersion'],
        cleanFiltersNotificationEnabled: map['cleanFiltersNotificationEnabled'],
        shouldShowFilterCleaningNotification:
            map['shouldShowFilterCleaningNotification'],
        isGeofenceOnExitEnabled: map['isGeofenceOnExitEnabled'],
        isClimateReactGeofenceOnExitEnabled:
            map['isClimateReactGeofenceOnExitEnabled'],
        isMotionGeofenceOnExitEnabled: map['isMotionGeofenceOnExitEnabled'],
        isCalibrating: map['isCalibrating'],
        serial: map['serial'],
        sensorsCalibration: map['sensorsCalibration'],
        motionSensors: List<dynamic>.from(map['motionSensors']),
        tags: List<dynamic>.from(map['tags']),
        timer: map['timer'],
        schedules: List<dynamic>.from(map['schedules']),
        motionConfig: map['motionConfig'],
        filtersCleaning: map['filtersCleaning'],
        serviceSubscriptions: List<dynamic>.from(map['serviceSubscriptions']),
        roomIsOccupied: map['roomIsOccupied'],
        mainMeasurementsSensor: map['mainMeasurementsSensor'],
        pureBoostConfig: map['pureBoostConfig'],
        warrantyEligible: map['warrantyEligible'],
        warrantyEligibleUntil:
            DateTime.parse(map['warrantyEligibleUntil']['time']),
        features: List<String>.from(map['features']),
        lastHealthcheck: map['lastHealthcheck'],
        homekitSupported: map['homekitSupported'],
        remoteCapabilities: map['remoteCapabilities'],
        remote: map['remote'],
        remoteFlavor: map['remoteFlavor'],
        remoteAlternatives: List<String>.from(map['remoteAlternatives']),
        smartMode: map['smartMode'],
        measurements: map['measurements'],
        accessPoint: map['accessPoint'],
        macAddress: map['macAddress'],
        autoOffMinutes: map['autoOffMinutes'],
        autoOffEnabled: map['autoOffEnabled'],
        antiMoldTimer: map['antiMoldTimer'],
        antiMoldConfig: map['antiMoldConfig'],
        powerConsumption: map['powerConsumption'],
        acType: map['acType'],
        lastRunEnergyConsumption: map['lastRunEnergyConsumption'],
        acUsage: map['acUsage'],
        optimusEnabled: map['optimusEnabled'],
        optimusInsights: map['optimusInsights'],
        organization: map['organization'],
        hasPolicy: map['hasPolicy'],
      );

  DateTime lastStateChange;
  DateTime lastStateChangeToOn;
  DateTime lastStateChangeToOff;
  DateTime warrantyEligibleUntil;

  static Future<Response<dynamic>> turnOn({
    required String apiKey,
    required Sensibo sensibo,
    required String id,
  }) async {
    final Uri url = Uri.parse(
      '/pods/$id/acStates?apiKey=$apiKey',
    );

    final body = {
      'acState': {
        'on': true,
      },
    };
    final Request request = Request(
      'POST',
      url,
      sensibo.client.baseUrl,
      body: body,
    );
    return sensibo.client.send<dynamic, dynamic>(request);
  }

  static Future<Response<dynamic>> turnOff({
    required String apiKey,
    required Sensibo sensibo,
    required String id,
  }) async {
    final Uri url = Uri.parse(
      '/pods/$id/acStates?apiKey=$apiKey',
    );

    final body = {
      'acState': {
        'on': false,
      },
    };
    final Request request = Request(
      'POST',
      url,
      sensibo.client.baseUrl,
      body: body,
    );
    return sensibo.client.send<dynamic, dynamic>(request);
  }
}
