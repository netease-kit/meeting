// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class TurnPageData extends BaseData{
  int action;

  TurnPageData(this.action) : super(TCProtocol.turnPage2TV, 0);

  @override
  Map toData() {
    return {
      'action': action,
    };
  }

}