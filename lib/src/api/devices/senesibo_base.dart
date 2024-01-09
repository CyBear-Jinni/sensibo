import 'package:sensibo/src/sensibo_utilties.dart';

class SensiboBase {
  SensiboBase({
    required this.type,
    required this.isGeofenceOnEnterEnabledForThisUser,
    required this.isClimateReactGeofenceOnEnterEnabledForThisUser,
    required this.isMotionGeofenceOnEnterEnabled,
    required this.isOwner,
    this.minimumCoolingTemperature,
    this.maximumHeatingTemperature,
    required this.restrictedMode,
    required this.shareDevice,
    required this.id,
    required this.qrId,
    required this.temperatureUnit,
    required this.room,
    required this.acState,
    required this.location,
    required this.connectionStatus,
    required this.firmwareVersion,
    required this.firmwareType,
    required this.productModel,
    required this.configGroup,
    required this.currentlyAvailableFirmwareVersion,
    required this.cleanFiltersNotificationEnabled,
    required this.shouldShowFilterCleaningNotification,
    required this.isGeofenceOnExitEnabled,
    required this.isClimateReactGeofenceOnExitEnabled,
    required this.isMotionGeofenceOnExitEnabled,
    required this.isCalibrating,
    required this.serial,
    required this.sensorsCalibration,
    required this.motionSensors,
    required this.tags,
    this.timer,
    required this.schedules,
    this.motionConfig,
    required this.filtersCleaning,
    required this.serviceSubscriptions,
    this.roomIsOccupied,
    this.mainMeasurementsSensor,
    this.pureBoostConfig,
    required this.warrantyEligible,
    required this.features,
    this.lastHealthcheck,
    required this.homekitSupported,
    required this.remoteCapabilities,
    this.remote,
    required this.remoteFlavor,
    required this.remoteAlternatives,
    this.smartMode,
    required this.measurements,
    required this.accessPoint,
    required this.macAddress,
    this.autoOffMinutes,
    required this.autoOffEnabled,
    this.antiMoldTimer,
    this.antiMoldConfig,
    this.powerConsumption,
    this.acType,
    this.lastRunEnergyConsumption,
    this.acUsage,
    required this.optimusEnabled,
    required this.optimusInsights,
    this.organization,
    required this.hasPolicy,
  });

  SensiboProductModels type;
  bool isGeofenceOnEnterEnabledForThisUser;
  bool isClimateReactGeofenceOnEnterEnabledForThisUser;
  bool isMotionGeofenceOnEnterEnabled;
  bool isOwner;
  int? minimumCoolingTemperature;
  int? maximumHeatingTemperature;
  bool restrictedMode;
  bool shareDevice;
  String id;
  String qrId;
  String temperatureUnit;
  Map<String, dynamic> room;
  Map<String, dynamic> acState;
  Map<String, dynamic> location;
  Map<String, dynamic> connectionStatus;
  String firmwareVersion;
  String firmwareType;
  String productModel;
  String configGroup;
  String currentlyAvailableFirmwareVersion;
  bool cleanFiltersNotificationEnabled;
  bool shouldShowFilterCleaningNotification;
  bool isGeofenceOnExitEnabled;
  bool isClimateReactGeofenceOnExitEnabled;
  bool isMotionGeofenceOnExitEnabled;
  bool isCalibrating;
  String serial;
  Map<String, dynamic> sensorsCalibration;
  List<dynamic> motionSensors;
  List<dynamic> tags;
  dynamic timer;
  List<dynamic> schedules;
  dynamic motionConfig;
  Map<String, dynamic> filtersCleaning;
  List<dynamic> serviceSubscriptions;
  dynamic roomIsOccupied;
  dynamic mainMeasurementsSensor;
  dynamic pureBoostConfig;
  String warrantyEligible;
  List<String> features;
  dynamic lastHealthcheck;
  bool homekitSupported;
  Map<String, dynamic> remoteCapabilities;
  dynamic remote;
  String remoteFlavor;
  List<String> remoteAlternatives;
  dynamic smartMode;
  Map<String, dynamic> measurements;
  Map<String, dynamic> accessPoint;
  String macAddress;
  dynamic autoOffMinutes;
  bool autoOffEnabled;
  dynamic antiMoldTimer;
  dynamic antiMoldConfig;
  dynamic powerConsumption;
  dynamic acType;
  dynamic lastRunEnergyConsumption;
  dynamic acUsage;
  bool optimusEnabled;
  Map<String, dynamic> optimusInsights;
  dynamic organization;
  bool hasPolicy;
}
