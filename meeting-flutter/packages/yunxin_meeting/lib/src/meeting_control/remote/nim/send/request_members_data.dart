// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class RequestMembersData extends BaseData{
  int? avRoomUid;
  RequestMembersData(int requestId, this.avRoomUid) : super(TCProtocol.fetchMemberInfo2TV, requestId);

  @override
  Map toData() {
    return {
      'requestId': requestId,
      'avRoomUid': avRoomUid,
    };
  }

}