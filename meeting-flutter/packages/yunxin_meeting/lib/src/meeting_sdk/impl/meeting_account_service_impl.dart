// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_sdk;

class _NEMeetingAccountServiceImpl extends NEMeetingAccountService {
  static const _tag = '_NEAccountServiceImpl';
  static final _NEMeetingAccountServiceImpl _instance = _NEMeetingAccountServiceImpl._();

  factory _NEMeetingAccountServiceImpl() => _instance;

  _NEMeetingAccountServiceImpl._();

  final NEAuthService _accountService = NERoomKit.instance.getAuthService();

  @override
  NEAccountInfo? getAccountInfo() {
    return _accountService.getAccountInfo();
  }
}
