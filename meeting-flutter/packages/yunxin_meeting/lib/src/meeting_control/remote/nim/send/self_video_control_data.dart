// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class SelfVideoControlData extends BaseData{

  ///1：有，2：无（自己关闭），3：无（主持人禁），4：无（主持人打开，等待成员确认）
  int muteVideo;

  SelfVideoControlData(this.muteVideo) : super(TCProtocol.selfVideo, 0);

  @override
  Map toData() {
    return {
      'video': muteVideo,
    };
  }

}