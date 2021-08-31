// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class NotifyTVUpdateData extends BaseData{

  NotifyTVUpdateData() : super(TCProtocol.upgrade2TV, 0);

  @override
  Map toData() {
    return {
    };
  }

}