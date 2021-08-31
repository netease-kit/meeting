import 'package:service/model/parse_sso_token.dart';

import '../app_http_proto.dart';

class ParseSSOTokenProto extends AppHttpProto<ParseSSOToken> {
  ParseSSOTokenProto(this.ssoToken);
  final String ssoToken;

  @override
  String path() {
    return '/ne-meeting-account/parseSSOToken';
  }

  @override
  ParseSSOToken result(Map map) {
    return ParseSSOToken.fromJson(map);
  }

  @override
  Map data() {
    return {'ssoToken':ssoToken};
  }
}
