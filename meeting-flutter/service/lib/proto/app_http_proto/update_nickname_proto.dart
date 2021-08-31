import '../app_http_proto.dart';

class UpdateNicknameProto extends AppHttpProto<void> {

  /// 昵称
  final String nickname;
  UpdateNicknameProto(this.nickname);

  @override
  String path() {
    return 'ne-meeting-account/changeNickname';
  }

  @override
  void result(Map map) {
    return null;
  }

  @override
  Map data() {
    return {
      'nickname': nickname,
    };
  }
}
