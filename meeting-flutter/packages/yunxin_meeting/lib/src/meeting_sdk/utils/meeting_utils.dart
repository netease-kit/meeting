// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_sdk;

///将room_kit的code返回值，统一处理为meeting code
NEResult translationToMeetingNEResult(NEResult neResult) {
  return NEResult(
    code: neResult.isSuccess() ? NEMeetingErrorCode.success : neResult.code,
    msg: neResult.msg,
    data: neResult.data,
  );
}
