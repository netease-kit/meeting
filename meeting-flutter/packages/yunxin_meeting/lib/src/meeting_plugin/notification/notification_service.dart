/*
 * Copyright (c) 2014-2020 NetEase, Inc.
 * All right reserved.
 */
part of meeting_plugin;

class NENotificationService extends _Service {
  @override
  String _getModule() {
    return "NENotificationService";
  }

  NENotificationService(MethodChannel _methodChannel, Map<String, _Handler> handlerMap)
      : super(_methodChannel, handlerMap);

  ///start foreground service
  Future<void> startForegroundService(NEForegroundServiceConfig? config) async {
    Map map = buildArguments();
    map['config'] = config?._toMap();
    return await _methodChannel.invokeMethod('startForegroundService', map);
  }

  Future<void> stopForegroundService() async {
    return await _methodChannel.invokeMethod('stopForegroundService', buildArguments());
  }

  @override
  Future<dynamic> _handlerMethod(String method, int code, Map arg, dynamic callback) {
    return Future<dynamic>.value();
  }
}
