// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ShowTypeData extends BaseData{
  int showType;

  ShowTypeData(this.showType) : super(TCProtocol.changeShowType2TV, 0);

  @override
  Map toData() {
    return {
      'showType': showType,
    };
  }

}