// Copyright (c) 2021 NetEase, Inc.  All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

part of meeting_sdk;

class _NESettingsServiceImpl extends NESettingsService {
  static const _tag = '_NESettingsServiceImpl';
  static late SharedPreferences _sharedPreferences;

  static final _NESettingsServiceImpl _instance = _NESettingsServiceImpl._();

  factory _NESettingsServiceImpl() => _instance;
  final _roomSettingService = NERoomKit.instance.getSettingsService();
  String? _userId;
  late String _key;
  final Map _settingsCache = {};

  _NESettingsServiceImpl._() {
    _ensureSettings();
    InMeetingService()
        .historyMeetingItemStream
        .listen(updateHistoryMeetingItem);
  }

  Future<Map> _ensureSettings() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    if (_userId != getCurrentUserId()) {
      _userId = getCurrentUserId();
      _key = '${_userId}_localSetting';
      var settings = _sharedPreferences.getString(_key);
      _settingsCache.clear();
      _settingsCache.addAll((settings == null || settings.isEmpty
          ? {}
          : json.decode(settings)) as Map);
      updateGlobalConfig();
      _markChanged();
    }
    return _settingsCache;
  }

  @override
  void enableShowMyMeetingElapseTime(bool show) =>
      _writeSettings(Keys.keyShowMeetTimeOpen, show);

  @override
  Future<bool> isShowMyMeetingElapseTimeEnabled() => _ensureSettings().then(
      (settings) => (settings[Keys.keyShowMeetTimeOpen] ?? false) as bool);

  @override
  void setTurnOnMyAudioWhenJoinMeeting(bool enabled) =>
      _writeSettings(Keys.keyMicroOpen, enabled);

  @override
  Future<bool> isTurnOnMyAudioWhenJoinMeetingEnabled() => _ensureSettings()
      .then((settings) => (settings[Keys.keyMicroOpen] ?? false) as bool);

  @override
  void setTurnOnMyVideoWhenJoinMeeting(bool enabled) =>
      _writeSettings(Keys.keyCameraOpen, enabled);

  @override
  Future<bool> isTurnOnMyVideoWhenJoinMeetingEnabled() => _ensureSettings()
      .then((settings) => (settings[Keys.keyCameraOpen] ?? false) as bool);

  void _writeSettings(String key, dynamic value) async {
    await _ensureSettings();
    dynamic oldValue = _settingsCache[key];
    if (oldValue != value) {
      _settingsCache[key] = value;
      await _sharedPreferences.setString(_key, jsonEncode(_settingsCache));
      _markChanged();
    }
  }

  /// ??????[ValueNotifier]??????listeners
  void _markChanged() {
    value = Map.unmodifiable(_settingsCache);
  }

  String getCurrentUserId() {
    final id = UserProfile.accountId;
    return id == null || id.isEmpty || UserProfile.isAnonymous ? '0' : id;
  }

  @override
  Future<int> getBeautyFaceValue() async {
    var beautyFaceValue = await NERoomKit.instance
        .getPreRoomService()
        .getPreRoomBeautyController()
        .getBeautyFaceValue();
    _writeSettings(Keys.keyGetBeautyFaceValue, beautyFaceValue.data);
    return beautyFaceValue.data!;
  }

  @override
  Future<bool> isBeautyFaceEnabled() {
    return Future.value(_roomSettingService.isBeautySupported());
  }

  @override
  Future<NEResult<void>> openBeautyUI(BuildContext context) {
    if (NEMeetingSDK.instance.getMeetingService().getMeetingStatus().event !=
        NEMeetingEvent.idle) {
      return Future.value(NEResult(
          code: NEMeetingErrorCode.alreadyInMeeting,
          msg: 'if meeting status is not idle,you can`t use open beauty'));
    }

    NERoomKit.instance
        .getPreRoomService()
        .getPreRoomBeautyController()
        .getBeautyFaceValue()
        .then((value) => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    BeautyPageProxy(beautyLevel: value.data!))));
    return Future.value(NEResult(code: NEMeetingErrorCode.success));
  }

  @override
  void setBeautyFaceValue(int value) => {
        NERoomKit.instance
            .getPreRoomService()
            .getPreRoomBeautyController()
            .setBeautyFaceValue(value),
        _writeSettings(Keys.keySetBeautyFaceValue, value)
      };

  /// ????????????????????????????????????
  ///
  @override
  Future<bool> isMeetingLiveEnabled() => _ensureSettings().then(
      (settings) async => Future.value((settings[Keys.keyMeetingLiveEnabled] ??
          _roomSettingService.isLiveStreamSupported()) as bool));

  /// update global config
  void updateGlobalConfig() async {
    final roomSettings = NERoomKit.instance.getSettingsService();
    final meetingLiveEnabled = roomSettings.isLiveStreamSupported();
    var isBeautyFaceEnabled = roomSettings.isBeautySupported();
    final isMeetingWhiteboardEnabled = roomSettings.isWhiteboardSupported();
    var isMeetingRecordEnabled = roomSettings.isCloudRecordSupported();
    _writeSettings(Keys.keyMeetingLiveEnabled, meetingLiveEnabled);
    _writeSettings(Keys.keyBeautyFaceEnabled, isBeautyFaceEnabled);
    _writeSettings(Keys.keyWhiteboardEnabled, isMeetingWhiteboardEnabled);
    _writeSettings(Keys.keyMeetingRecordEnabled, isMeetingRecordEnabled);
    _markChanged();
  }

  @override
  Future<List<NEHistoryMeetingItem>?> getHistoryMeetingItem() async {
    var settings = await _ensureSettings();
    final item = NEHistoryMeetingItem.fromJson(
        settings[Keys.keyHistoryMeetingItem] as Map?);
    if (item != null) {
      return [item];
    }
    return null;
  }

  @override
  void updateHistoryMeetingItem(NEHistoryMeetingItem item) async {
    _writeSettings(Keys.keyHistoryMeetingItem, item.toJson());
  }

  @override
  Future<bool> isMeetingCloudRecordEnabled() {
    return Future.value(_roomSettingService.isCloudRecordSupported());
  }

  @override
  Future<bool> isMeetingWhiteboardEnabled() {
    return Future.value(_roomSettingService.isWhiteboardSupported());
  }
}

class Keys {
  static const String keyCameraOpen = 'cameraOpen';

  static const String keyMicroOpen = 'microphoneOpen';

  static const String keyShowMeetTimeOpen = 'showMeetingTime';

  static const String keyMeetingLiveEnabled = 'meetingLiveEnabled';

  /// ??????????????????UI????????????
  static const String keyOpenBeautyUI = 'openBeautyUI';

  /// ????????????????????????????????????
  static const String keyBeautyFaceEnabled = 'isBeautyFaceEnabled';

  /// ??????????????????????????????????????????0-10???
  static const String keySetBeautyFaceValue = 'setBeautyFaceValue';

  /// ??????????????????????????????
  static const String keyGetBeautyFaceValue = 'getBeautyFaceValue';

  static const String keyHistoryMeetingItem = 'historyMeetingItem';

  /// ????????????????????????????????????
  static const String keyWhiteboardEnabled = 'isMeetingWhiteboardEnabled';

  /// ????????????????????????????????????
  static const String keyMeetingRecordEnabled = 'isMeetingRecordEnabled';
}
