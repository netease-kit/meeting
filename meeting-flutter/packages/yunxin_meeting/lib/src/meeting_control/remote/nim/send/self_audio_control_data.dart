// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class SelfAudioControlData extends BaseData{

  ///1：有，2：无（自己关闭），3：无（主持人禁），4：无（主持人打开，等待成员确认）
  int muteAudio;

  SelfAudioControlData(this.muteAudio) : super(TCProtocol.selfAudio, 0);

  @override
  Map toData() {
    return {
      'audio': muteAudio,
    };
  }

}