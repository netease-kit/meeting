// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class _GetTvInfoApi extends HttpApi<TVInfo> {

  _GetTVInfoRequest request;

  _GetTvInfoApi(this.request);

  @override
  String path() {
    return '/v2/sdk/account/rc/pairingCodeInfoGet';
  }

  @override
  TVInfo result(Map map) => TVInfo.fromJson(map);

  @override
  Map data() => request.data;
}