import 'package:service/model/login_info.dart';

import '../app_http_proto.dart';

class SwitchAppProto extends AppHttpProto<LoginInfo> {
  SwitchAppProto();

  @override
  String path() {
    return 'ne-meeting-account/switchApp';
  }

  @override
  LoginInfo result(Map map) {
    return LoginInfo.fromJson(map);
  }

  @override
  Map data() {
    return {};
  }
}
