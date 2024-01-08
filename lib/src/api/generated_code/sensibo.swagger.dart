// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;

part 'sensibo.swagger.chopper.dart';
part 'sensibo.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Sensibo extends ChopperService {
  static Sensibo create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Sensibo(client);
    }

    final newClient = ChopperClient(
        services: [_$Sensibo()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Sensibo(newClient);
  }

  ///
  ///@param fields comma separated fields to retrieve or * for all
  Future<chopper.Response> usersMePodsGet(
      {String? fields, required String apiKey}) {
    return _usersMePodsGet(fields: fields, apiKey: apiKey);
  }

  ///
  ///@param fields comma separated fields to retrieve or * for all
  @Get(path: '/users/me/pods')
  Future<chopper.Response> _usersMePodsGet(
      {@Query('fields') String? fields, String? apiKey});

  ///
  ///@param device_id device unique id
  ///@param fields comma separated fields to retrieve or * for all
  Future<chopper.Response> podsDeviceIdGet({
    required String? deviceId,
    String? fields,
  }) {
    return _podsDeviceIdGet(deviceId: deviceId, fields: fields);
  }

  ///
  ///@param device_id device unique id
  ///@param fields comma separated fields to retrieve or * for all
  @Get(path: '/pods/{device_id}')
  Future<chopper.Response> _podsDeviceIdGet({
    @Path('device_id') required String? deviceId,
    @Query('fields') String? fields,
  });

  ///
  ///@param device_id device unique id
  ///@param limit number of states to retrieve. Max=20
  Future<chopper.Response> podsDeviceIdAcStatesGet({
    required String? deviceId,
    String? limit,
  }) {
    return _podsDeviceIdAcStatesGet(deviceId: deviceId, limit: limit);
  }

  ///
  ///@param device_id device unique id
  ///@param limit number of states to retrieve. Max=20
  @Get(path: '/pods/{device_id}/acStates')
  Future<chopper.Response> _podsDeviceIdAcStatesGet({
    @Path('device_id') required String? deviceId,
    @Query('limit') String? limit,
  });

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdAcStatesPost({
    required String? deviceId,
    required AcStateObject? body,
  }) {
    return _podsDeviceIdAcStatesPost(deviceId: deviceId, body: body);
  }

  ///
  ///@param device_id device unique id
  @Post(
    path: '/pods/{device_id}/acStates',
    optionalBody: true,
  )
  Future<chopper.Response> _podsDeviceIdAcStatesPost({
    @Path('device_id') required String? deviceId,
    @Body() required AcStateObject? body,
  });

  ///
  ///@param device_id device unique id
  ///@param property The property to change (e.g., targetTemperature)
  Future<chopper.Response> podsDeviceIdAcStatesPropertyPatch({
    required String? deviceId,
    required String? property,
    required NewValueObject? body,
  }) {
    return _podsDeviceIdAcStatesPropertyPatch(
        deviceId: deviceId, property: property, body: body);
  }

  ///
  ///@param device_id device unique id
  ///@param property The property to change (e.g., targetTemperature)
  @Patch(
    path: '/pods/{device_id}/acStates/{property}',
    optionalBody: true,
  )
  Future<chopper.Response> _podsDeviceIdAcStatesPropertyPatch({
    @Path('device_id') required String? deviceId,
    @Path('property') required String? property,
    @Body() required NewValueObject? body,
  });

  ///
  ///@param device_id device unique id
  ///@param days number of days, default is 1
  Future<chopper.Response> podsDeviceIdHistoricalMeasurementsGet({
    required String? deviceId,
    int? days,
  }) {
    return _podsDeviceIdHistoricalMeasurementsGet(
        deviceId: deviceId, days: days);
  }

  ///
  ///@param device_id device unique id
  ///@param days number of days, default is 1
  @Get(path: '/pods/{device_id}/historicalMeasurements')
  Future<chopper.Response> _podsDeviceIdHistoricalMeasurementsGet({
    @Path('device_id') required String? deviceId,
    @Query('days') int? days,
  });

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdSmartmodeGet(
      {required String? deviceId}) {
    return _podsDeviceIdSmartmodeGet(deviceId: deviceId);
  }

  ///
  ///@param device_id device unique id
  @Get(path: '/pods/{device_id}/smartmode')
  Future<chopper.Response> _podsDeviceIdSmartmodeGet(
      {@Path('device_id') required String? deviceId});

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdSmartmodePut({
    required String? deviceId,
    required Object? body,
  }) {
    return _podsDeviceIdSmartmodePut(deviceId: deviceId, body: body);
  }

  ///
  ///@param device_id device unique id
  @Put(
    path: '/pods/{device_id}/smartmode',
    optionalBody: true,
  )
  Future<chopper.Response> _podsDeviceIdSmartmodePut({
    @Path('device_id') required String? deviceId,
    @Body() required Object? body,
  });

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdSmartmodePost({
    required String? deviceId,
    required Object? body,
  }) {
    return _podsDeviceIdSmartmodePost(deviceId: deviceId, body: body);
  }

  ///
  ///@param device_id device unique id
  @Post(
    path: '/pods/{device_id}/smartmode',
    optionalBody: true,
  )
  Future<chopper.Response> _podsDeviceIdSmartmodePost({
    @Path('device_id') required String? deviceId,
    @Body() required Object? body,
  });

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdTimerGet({required String? deviceId}) {
    return _podsDeviceIdTimerGet(deviceId: deviceId);
  }

  ///
  ///@param device_id device unique id
  @Get(path: '/pods/{device_id}/timer/')
  Future<chopper.Response> _podsDeviceIdTimerGet(
      {@Path('device_id') required String? deviceId});

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdTimerDelete(
      {required String? deviceId}) {
    return _podsDeviceIdTimerDelete(deviceId: deviceId);
  }

  ///
  ///@param device_id device unique id
  @Delete(path: '/pods/{device_id}/timer/')
  Future<chopper.Response> _podsDeviceIdTimerDelete(
      {@Path('device_id') required String? deviceId});

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdTimerPut({
    required String? deviceId,
    required TimerObject? body,
  }) {
    return _podsDeviceIdTimerPut(deviceId: deviceId, body: body);
  }

  ///
  ///@param device_id device unique id
  @Put(
    path: '/pods/{device_id}/timer/',
    optionalBody: true,
  )
  Future<chopper.Response> _podsDeviceIdTimerPut({
    @Path('device_id') required String? deviceId,
    @Body() required TimerObject? body,
  });

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdSchedulesGet(
      {required String? deviceId}) {
    return _podsDeviceIdSchedulesGet(deviceId: deviceId);
  }

  ///
  ///@param device_id device unique id
  @Get(path: '/pods/{device_id}/schedules/')
  Future<chopper.Response> _podsDeviceIdSchedulesGet(
      {@Path('device_id') required String? deviceId});

  ///
  ///@param device_id device unique id
  Future<chopper.Response> podsDeviceIdSchedulesPost({
    required String? deviceId,
    required ScheduleObject? body,
  }) {
    return _podsDeviceIdSchedulesPost(deviceId: deviceId, body: body);
  }

  ///
  ///@param device_id device unique id
  @Post(
    path: '/pods/{device_id}/schedules/',
    optionalBody: true,
  )
  Future<chopper.Response> _podsDeviceIdSchedulesPost({
    @Path('device_id') required String? deviceId,
    @Body() required ScheduleObject? body,
  });

  ///
  ///@param device_id device unique id
  ///@param schedule_id schedule id
  Future<chopper.Response> podsDeviceIdSchedulesScheduleIdGet({
    required String? deviceId,
    required String? scheduleId,
  }) {
    return _podsDeviceIdSchedulesScheduleIdGet(
        deviceId: deviceId, scheduleId: scheduleId);
  }

  ///
  ///@param device_id device unique id
  ///@param schedule_id schedule id
  @Get(path: '/pods/{device_id}/schedules/{schedule_id}/')
  Future<chopper.Response> _podsDeviceIdSchedulesScheduleIdGet({
    @Path('device_id') required String? deviceId,
    @Path('schedule_id') required String? scheduleId,
  });

  ///
  ///@param device_id device unique id
  ///@param schedule_id schedule id
  Future<chopper.Response> podsDeviceIdSchedulesScheduleIdDelete({
    required String? deviceId,
    required String? scheduleId,
  }) {
    return _podsDeviceIdSchedulesScheduleIdDelete(
        deviceId: deviceId, scheduleId: scheduleId);
  }

  ///
  ///@param device_id device unique id
  ///@param schedule_id schedule id
  @Delete(path: '/pods/{device_id}/schedules/{schedule_id}/')
  Future<chopper.Response> _podsDeviceIdSchedulesScheduleIdDelete({
    @Path('device_id') required String? deviceId,
    @Path('schedule_id') required String? scheduleId,
  });

  ///
  ///@param device_id device unique id
  ///@param schedule_id schedule id
  Future<chopper.Response> podsDeviceIdSchedulesScheduleIdPut({
    required String? deviceId,
    required String? scheduleId,
    required Object? body,
  }) {
    return _podsDeviceIdSchedulesScheduleIdPut(
        deviceId: deviceId, scheduleId: scheduleId, body: body);
  }

  ///
  ///@param device_id device unique id
  ///@param schedule_id schedule id
  @Put(
    path: '/pods/{device_id}/schedules/{schedule_id}/',
    optionalBody: true,
  )
  Future<chopper.Response> _podsDeviceIdSchedulesScheduleIdPut({
    @Path('device_id') required String? deviceId,
    @Path('schedule_id') required String? scheduleId,
    @Body() required Object? body,
  });
}

@JsonSerializable(explicitToJson: true)
class AcStateObject {
  const AcStateObject({
    required this.acState,
  });

  factory AcStateObject.fromJson(Map<String, dynamic> json) =>
      _$AcStateObjectFromJson(json);

  static const toJsonFactory = _$AcStateObjectToJson;
  Map<String, dynamic> toJson() => _$AcStateObjectToJson(this);

  @JsonKey(name: 'acState')
  final AcState acState;
  static const fromJsonFactory = _$AcStateObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcStateObject &&
            (identical(other.acState, acState) ||
                const DeepCollectionEquality().equals(other.acState, acState)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(acState) ^ runtimeType.hashCode;
}

extension $AcStateObjectExtension on AcStateObject {
  AcStateObject copyWith({AcState? acState}) {
    return AcStateObject(acState: acState ?? this.acState);
  }

  AcStateObject copyWithWrapped({Wrapped<AcState>? acState}) {
    return AcStateObject(
        acState: (acState != null ? acState.value : this.acState));
  }
}

@JsonSerializable(explicitToJson: true)
class AcState {
  const AcState({
    required this.on,
    required this.mode,
    required this.fanLevel,
    required this.targetTemperature,
    this.temperatureUnit,
    this.swing,
  });

  factory AcState.fromJson(Map<String, dynamic> json) =>
      _$AcStateFromJson(json);

  static const toJsonFactory = _$AcStateToJson;
  Map<String, dynamic> toJson() => _$AcStateToJson(this);

  @JsonKey(name: 'on')
  final bool on;
  @JsonKey(name: 'mode')
  final String mode;
  @JsonKey(name: 'fanLevel')
  final String fanLevel;
  @JsonKey(name: 'targetTemperature')
  final int targetTemperature;
  @JsonKey(name: 'temperatureUnit')
  final String? temperatureUnit;
  @JsonKey(name: 'swing')
  final String? swing;
  static const fromJsonFactory = _$AcStateFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcState &&
            (identical(other.on, on) ||
                const DeepCollectionEquality().equals(other.on, on)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.fanLevel, fanLevel) ||
                const DeepCollectionEquality()
                    .equals(other.fanLevel, fanLevel)) &&
            (identical(other.targetTemperature, targetTemperature) ||
                const DeepCollectionEquality()
                    .equals(other.targetTemperature, targetTemperature)) &&
            (identical(other.temperatureUnit, temperatureUnit) ||
                const DeepCollectionEquality()
                    .equals(other.temperatureUnit, temperatureUnit)) &&
            (identical(other.swing, swing) ||
                const DeepCollectionEquality().equals(other.swing, swing)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(on) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(fanLevel) ^
      const DeepCollectionEquality().hash(targetTemperature) ^
      const DeepCollectionEquality().hash(temperatureUnit) ^
      const DeepCollectionEquality().hash(swing) ^
      runtimeType.hashCode;
}

extension $AcStateExtension on AcState {
  AcState copyWith(
      {bool? on,
      String? mode,
      String? fanLevel,
      int? targetTemperature,
      String? temperatureUnit,
      String? swing}) {
    return AcState(
        on: on ?? this.on,
        mode: mode ?? this.mode,
        fanLevel: fanLevel ?? this.fanLevel,
        targetTemperature: targetTemperature ?? this.targetTemperature,
        temperatureUnit: temperatureUnit ?? this.temperatureUnit,
        swing: swing ?? this.swing);
  }

  AcState copyWithWrapped(
      {Wrapped<bool>? on,
      Wrapped<String>? mode,
      Wrapped<String>? fanLevel,
      Wrapped<int>? targetTemperature,
      Wrapped<String?>? temperatureUnit,
      Wrapped<String?>? swing}) {
    return AcState(
        on: (on != null ? on.value : this.on),
        mode: (mode != null ? mode.value : this.mode),
        fanLevel: (fanLevel != null ? fanLevel.value : this.fanLevel),
        targetTemperature: (targetTemperature != null
            ? targetTemperature.value
            : this.targetTemperature),
        temperatureUnit: (temperatureUnit != null
            ? temperatureUnit.value
            : this.temperatureUnit),
        swing: (swing != null ? swing.value : this.swing));
  }
}

@JsonSerializable(explicitToJson: true)
class NewValueObject {
  const NewValueObject({
    required this.newValue,
  });

  factory NewValueObject.fromJson(Map<String, dynamic> json) =>
      _$NewValueObjectFromJson(json);

  static const toJsonFactory = _$NewValueObjectToJson;
  Map<String, dynamic> toJson() => _$NewValueObjectToJson(this);

  @JsonKey(name: 'newValue')
  final String newValue;
  static const fromJsonFactory = _$NewValueObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewValueObject &&
            (identical(other.newValue, newValue) ||
                const DeepCollectionEquality()
                    .equals(other.newValue, newValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(newValue) ^ runtimeType.hashCode;
}

extension $NewValueObjectExtension on NewValueObject {
  NewValueObject copyWith({String? newValue}) {
    return NewValueObject(newValue: newValue ?? this.newValue);
  }

  NewValueObject copyWithWrapped({Wrapped<String>? newValue}) {
    return NewValueObject(
        newValue: (newValue != null ? newValue.value : this.newValue));
  }
}

@JsonSerializable(explicitToJson: true)
class TimerObject {
  const TimerObject({
    required this.minutesFromNow,
    required this.acState,
  });

  factory TimerObject.fromJson(Map<String, dynamic> json) =>
      _$TimerObjectFromJson(json);

  static const toJsonFactory = _$TimerObjectToJson;
  Map<String, dynamic> toJson() => _$TimerObjectToJson(this);

  @JsonKey(name: 'minutesFromNow')
  final int minutesFromNow;
  @JsonKey(name: 'acState')
  final AcState acState;
  static const fromJsonFactory = _$TimerObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerObject &&
            (identical(other.minutesFromNow, minutesFromNow) ||
                const DeepCollectionEquality()
                    .equals(other.minutesFromNow, minutesFromNow)) &&
            (identical(other.acState, acState) ||
                const DeepCollectionEquality().equals(other.acState, acState)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(minutesFromNow) ^
      const DeepCollectionEquality().hash(acState) ^
      runtimeType.hashCode;
}

extension $TimerObjectExtension on TimerObject {
  TimerObject copyWith({int? minutesFromNow, AcState? acState}) {
    return TimerObject(
        minutesFromNow: minutesFromNow ?? this.minutesFromNow,
        acState: acState ?? this.acState);
  }

  TimerObject copyWithWrapped(
      {Wrapped<int>? minutesFromNow, Wrapped<AcState>? acState}) {
    return TimerObject(
        minutesFromNow: (minutesFromNow != null
            ? minutesFromNow.value
            : this.minutesFromNow),
        acState: (acState != null ? acState.value : this.acState));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduleObject {
  const ScheduleObject({
    required this.targetTimeLocal,
    required this.timezone,
    required this.acState,
    required this.recurOnDaysOfWeek,
  });

  factory ScheduleObject.fromJson(Map<String, dynamic> json) =>
      _$ScheduleObjectFromJson(json);

  static const toJsonFactory = _$ScheduleObjectToJson;
  Map<String, dynamic> toJson() => _$ScheduleObjectToJson(this);

  @JsonKey(name: 'targetTimeLocal')
  final String targetTimeLocal;
  @JsonKey(name: 'timezone')
  final String timezone;
  @JsonKey(name: 'acState')
  final AcState acState;
  @JsonKey(name: 'recurOnDaysOfWeek')
  final dynamic recurOnDaysOfWeek;
  static const fromJsonFactory = _$ScheduleObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleObject &&
            (identical(other.targetTimeLocal, targetTimeLocal) ||
                const DeepCollectionEquality()
                    .equals(other.targetTimeLocal, targetTimeLocal)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.acState, acState) ||
                const DeepCollectionEquality()
                    .equals(other.acState, acState)) &&
            (identical(other.recurOnDaysOfWeek, recurOnDaysOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.recurOnDaysOfWeek, recurOnDaysOfWeek)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(targetTimeLocal) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(acState) ^
      const DeepCollectionEquality().hash(recurOnDaysOfWeek) ^
      runtimeType.hashCode;
}

extension $ScheduleObjectExtension on ScheduleObject {
  ScheduleObject copyWith(
      {String? targetTimeLocal,
      String? timezone,
      AcState? acState,
      dynamic recurOnDaysOfWeek}) {
    return ScheduleObject(
        targetTimeLocal: targetTimeLocal ?? this.targetTimeLocal,
        timezone: timezone ?? this.timezone,
        acState: acState ?? this.acState,
        recurOnDaysOfWeek: recurOnDaysOfWeek ?? this.recurOnDaysOfWeek);
  }

  ScheduleObject copyWithWrapped(
      {Wrapped<String>? targetTimeLocal,
      Wrapped<String>? timezone,
      Wrapped<AcState>? acState,
      Wrapped<dynamic>? recurOnDaysOfWeek}) {
    return ScheduleObject(
        targetTimeLocal: (targetTimeLocal != null
            ? targetTimeLocal.value
            : this.targetTimeLocal),
        timezone: (timezone != null ? timezone.value : this.timezone),
        acState: (acState != null ? acState.value : this.acState),
        recurOnDaysOfWeek: (recurOnDaysOfWeek != null
            ? recurOnDaysOfWeek.value
            : this.recurOnDaysOfWeek));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
