// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensibo.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcStateObject _$AcStateObjectFromJson(Map<String, dynamic> json) =>
    AcStateObject(
      acState: AcState.fromJson(json['acState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AcStateObjectToJson(AcStateObject instance) =>
    <String, dynamic>{
      'acState': instance.acState.toJson(),
    };

AcState _$AcStateFromJson(Map<String, dynamic> json) => AcState(
      on: json['on'] as bool,
      mode: json['mode'] as String,
      fanLevel: json['fanLevel'] as String,
      targetTemperature: json['targetTemperature'] as int,
      temperatureUnit: json['temperatureUnit'] as String?,
      swing: json['swing'] as String?,
    );

Map<String, dynamic> _$AcStateToJson(AcState instance) => <String, dynamic>{
      'on': instance.on,
      'mode': instance.mode,
      'fanLevel': instance.fanLevel,
      'targetTemperature': instance.targetTemperature,
      'temperatureUnit': instance.temperatureUnit,
      'swing': instance.swing,
    };

NewValueObject _$NewValueObjectFromJson(Map<String, dynamic> json) =>
    NewValueObject(
      newValue: json['newValue'] as String,
    );

Map<String, dynamic> _$NewValueObjectToJson(NewValueObject instance) =>
    <String, dynamic>{
      'newValue': instance.newValue,
    };

TimerObject _$TimerObjectFromJson(Map<String, dynamic> json) => TimerObject(
      minutesFromNow: json['minutesFromNow'] as int,
      acState: AcState.fromJson(json['acState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimerObjectToJson(TimerObject instance) =>
    <String, dynamic>{
      'minutesFromNow': instance.minutesFromNow,
      'acState': instance.acState.toJson(),
    };

ScheduleObject _$ScheduleObjectFromJson(Map<String, dynamic> json) =>
    ScheduleObject(
      targetTimeLocal: json['targetTimeLocal'] as String,
      timezone: json['timezone'] as String,
      acState: AcState.fromJson(json['acState'] as Map<String, dynamic>),
      recurOnDaysOfWeek: json['recurOnDaysOfWeek'],
    );

Map<String, dynamic> _$ScheduleObjectToJson(ScheduleObject instance) =>
    <String, dynamic>{
      'targetTimeLocal': instance.targetTimeLocal,
      'timezone': instance.timezone,
      'acState': instance.acState.toJson(),
      'recurOnDaysOfWeek': instance.recurOnDaysOfWeek,
    };
