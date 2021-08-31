/*
 * Copyright (c) 2014-2020 NetEase, Inc.
 * All right reserved.
 */
part of meeting_plugin;

abstract class _Handler {
  _Handler(Map<String, _Handler> handlerMap) {
    handlerMap[_getModule()] = this;
  }

  /// module name, distinct name
  String _getModule();

  Future<dynamic> _handler(MethodCall call);
}
