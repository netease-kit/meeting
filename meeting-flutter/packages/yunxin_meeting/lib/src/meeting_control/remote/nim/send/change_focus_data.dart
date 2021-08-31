// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ChangeFocusData extends BaseData{
  ///被操作对象user id
  String operaUser;
  ///设置/取消焦点
  bool isFocus;

  ChangeFocusData(this.operaUser, this.isFocus) : super(TCProtocol.controlFocus, 0);

  @override
  Map toData() {
    return {
      'isFocus' : isFocus,
      'operAccountId': operaUser,
    };
  }

}