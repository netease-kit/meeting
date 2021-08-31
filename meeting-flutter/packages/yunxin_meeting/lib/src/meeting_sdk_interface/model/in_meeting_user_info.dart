
/// 会议中的成员信息类
class NEInMeetingUserInfo {
  final String userId;

  final String userName;

  ///会议中的成员标签，自定义，最大长度1024个字符
  final String? tag;

  NEInMeetingUserInfo(this.userId, this.userName,this.tag);

  Map<String, dynamic> toMap() => <String, dynamic>{
        'userId': userId,
        'userName': userName,
        'tag': tag,
      };

  @override
  String toString() {
    return 'NEInMeetingUserInfo{userId: $userId, userName: $userName, tag: $tag}';
  }
}
