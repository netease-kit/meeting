// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class FeedbackData extends BaseData{
  String phone;
  String category;
  String description;
  int time;
  String deviceId;

  FeedbackData(this.phone, this.category, this.description, this.time, this.deviceId) : super(TCProtocol.feedback2TV, 0);

  @override
  Map toData() {
    return {
      'phone': phone,
      'category': category,
      'description': description,
      'time': time,
      'deviceId': deviceId,
    };
  }

}