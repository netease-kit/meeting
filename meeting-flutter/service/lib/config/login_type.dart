/// 登录类型。 token登录， 验证码登录, 密码登录
/// (loginType为0，传meetingToken值
/// loginType为1, 3，传登录密码
/// loginType为2，传手机检验码)
enum LoginType { token, password, verify, third, sso}
