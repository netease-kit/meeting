// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class RequestUpdateData extends BaseData {
  bool onlyCheckForce;

  RequestUpdateData(int requestId, this.onlyCheckForce) : super(TCProtocol.checkUpgrade2TV, requestId);

  @override
  Map toData() {
    return {
      'requestId': requestId,
      'onlyCheckForce': onlyCheckForce,
    };
  }
}