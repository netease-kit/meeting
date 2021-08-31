import 'package:service/model/account_app_info.dart';

import '../app_http_proto.dart';

class GetAccountAppInfoProto extends AppHttpProto<AccountAppInfo> {

  GetAccountAppInfoProto();

  @override
  String path() {
    return 'ne-meeting-account/getAccountAppInfo';
  }

  @override
  AccountAppInfo result(Map map) {
    return AccountAppInfo.fromJson(map);
  }

  @override
  Map data() {
    return {};
  }

}
