// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensibo.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Sensibo extends Sensibo {
  _$Sensibo([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Sensibo;

  @override
  Future<Response<dynamic>> _usersMePodsGet({
    String? fields,
  }) {
    final Uri $url = Uri.parse('/users/me/pods');
    final Map<String, dynamic> $params = <String, dynamic>{'fields': fields};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdGet({
    required String? deviceId,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}');
    final Map<String, dynamic> $params = <String, dynamic>{'fields': fields};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdAcStatesGet({
    required String? deviceId,
    String? limit,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/acStates');
    final Map<String, dynamic> $params = <String, dynamic>{'limit': limit};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdAcStatesPost({
    required String? deviceId,
    required AcStateObject? body,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/acStates');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdAcStatesPropertyPatch({
    required String? deviceId,
    required String? property,
    required NewValueObject? body,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/acStates/${property}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdHistoricalMeasurementsGet({
    required String? deviceId,
    int? days,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/historicalMeasurements');
    final Map<String, dynamic> $params = <String, dynamic>{'days': days};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSmartmodeGet(
      {required String? deviceId}) {
    final Uri $url = Uri.parse('/pods/${deviceId}/smartmode');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSmartmodePut({
    required String? deviceId,
    required Object? body,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/smartmode');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSmartmodePost({
    required String? deviceId,
    required Object? body,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/smartmode');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdTimerGet({required String? deviceId}) {
    final Uri $url = Uri.parse('/pods/${deviceId}/timer/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdTimerDelete(
      {required String? deviceId}) {
    final Uri $url = Uri.parse('/pods/${deviceId}/timer/');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdTimerPut({
    required String? deviceId,
    required TimerObject? body,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/timer/');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSchedulesGet(
      {required String? deviceId}) {
    final Uri $url = Uri.parse('/pods/${deviceId}/schedules/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSchedulesPost({
    required String? deviceId,
    required ScheduleObject? body,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/schedules/');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSchedulesScheduleIdGet({
    required String? deviceId,
    required String? scheduleId,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/schedules/${scheduleId}/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSchedulesScheduleIdDelete({
    required String? deviceId,
    required String? scheduleId,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/schedules/${scheduleId}/');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _podsDeviceIdSchedulesScheduleIdPut({
    required String? deviceId,
    required String? scheduleId,
    required Object? body,
  }) {
    final Uri $url = Uri.parse('/pods/${deviceId}/schedules/${scheduleId}/');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
