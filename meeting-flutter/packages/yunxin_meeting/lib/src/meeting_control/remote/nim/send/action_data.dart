// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ActionData extends BaseData{

  ActionData(int type, int requestId) : super(type, requestId);

  @override
  Map toData() {
    return {};
  }

}