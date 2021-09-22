// Copyright (c) 2021 NetEase, Inc.  All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

part of meeting_control;

class _Strings {
  static const String createMeeting = '创建会议';
  static const String joinMeeting = '加入会议';
  static const String inputMeetingId = '请输入会议ID';
  static const String cancel = '取消';
  static const String joiningTips = '正在进入会议...';
  static const String tvControl = '电视遥控';
  static const String tvControlTitlePrefix = '会议ID：';
  static const String tvControlTitle = '电视遥控器';
  static const String tvControlTitleSuffix = '的电视遥控器';
  static const String disconnect = '断开连接';
  static const String leaveMeeting = '离开会议';
  static const String quitMeeting = '结束会议';
  static const String yourChangeHost = '您已经成为主持人';
  static const String yourChangeFocus = '您已被设置为焦点视频';
  static const String yourChangeUnFocus = '您已被取消焦点视频';
  static const String showType = '视图布局';
  static const String more = '更多';
  static const String showTypePresenter = '演讲者视图';
  static const String showTypeGallery = '画廊视图';
  static const String hostRejectAudioHandsUpFailed = '手放下失败';

  static const String muteAudioFail = '静音失败';
  static const String unMuteAudioFail = '解除静音失败';
  static const String muteVideoFail = '停止视频失败';
  static const String unMuteVideoFail = '开启视频失败';
  static const String focusVideoFail = '设为焦点视频失败';
  static const String unFocusVideoFail = '取消焦点视频失败';
  static const String changeHostFail = '移交主持人失败';
  static const String removeMemberFail = '移除失败';
  static const String notify = '通知';
  static const String hostKickedYou = '主持人已将您从本场会议中移除';
  static const String hostCloseMeeting = '主持人已结束会议';
  static const String sure = '确定';
  static const String openCameraEnterMeeting = '入会时打开摄像头';
  static const String openMicroEnterMeeting = '入会时打开麦克风';
  static const String inputTVPair = '请输入电视端配对码';
  static const String openCamera = '打开摄像头';
  static const String openMicro = '打开麦克风';
  static const String hostOpenCameraTips = '主持人已重新打开您的摄像头，确认打开？';
  static const String hostOpenMicroTips = '主持人已重新打开您的麦克风，确认打开？';
  static const String hostExitTips = '如果您不想中断会议，请在离开前指定一个主持人';
  static const String leaveTips = '您确定要离开这个会议吗？';
  static const String finish = '结束';
  static const String leave = '离开';
  static const String muteAllAudioSuccess = '您已进行全体静音';
  static const String muteAllAudioFail = '全体静音失败';
  static const String unMuteAllAudioSuccess = '您已请求解除全体静音';
  static const String unMuteAllAudioFail = '解除全体静音失败';
  static const String confirmDisconnect = '确定要断开连接？';
  static const String backConfirmDisconnect = '返回将与电视断开连接，确定要返回？';
  static const String meetingHostMuteVideo = '您已被停止视频';
  static const String meetingHostMuteAudio = '您已被静音';
  static const String meetingHostMuteAllAudio = '主持人设置了全体静音';
  static const String findNewVersionContent = '检测到所配对电视不是最新版本，是否更新电视端app？';
  static const String update = '更新';
  static const String tvUpdate = '电视端应用更新';
  static const String waitTvUpdate = '请等待电视端成功安装最新版本安装包，重新输入配对码进行配对';
  static const String errorTVUpgrading = '电视正在更新，配对失败';
  static const String errorTVCannotMatch = '当前不能进行配对操作';
  static const String forbiddenByHostVideo = '主持人已将您停止视频';
  static const String loginError = '登录失败';
  static const String notSupportPairOtherCompanyTV = '目前不支持配对其他公司的电视';
  static const String networkUnavailable = '网络连接失败，请稍后重试！';

  static const String controlTV = '电视遥控';
  static const String settingTitle = '设置';
  static const String meeting = '会议';
  static const String beauty = '美颜';
  static const String beautyLevel = '美颜等级';
  static const String tvMobileControl = '电视端手机遥控';
  static const String appName = '网易会议';
  static const String inputNick = '请输入个人昵称';
  static const String close = '关闭';
  static const String open = '打开';
  static const String closeCamera = '关闭摄像头';
  static const String closeMicrophone = '关闭麦克风';
  static const String networkUnavailableCheck = '网络连接失败，请检查你的网络连接！';
  static const String networkNotStable = '当前网络状况不佳';
  static const String logining = '正在登录，请稍后';
  static const String invalidStatus = '正在获取账号，请稍后';
  static const String loginingIm = '正在登录应用，请稍后';
  static const String serverForbidden = '服务器忙，请稍后';
  static const String immediatelyRegister = '立即注册';
  static const String regist = '注册';
  static const String login = '登录';
  static const String loginByMobile = '手机验证码登录';
  static const String newRegist = '新用户注册';
  static const String checkMobile = '验证手机号';
  static const String enterCheckCode = '请输入验证码';
  static const String loginByPassword = '密码登录';
  static const String hintAccount = '请输入账号';
  static const String hintPassword = '请输入密码';
  static const String hintOldPassword = '请输入原密码';
  static const String hintNewPassword = '请输入新密码';
  static const String hintConfirmPassword = '请再次输入新密码';
  static const String hintMobile = '请输入手机号';
  static const String hintNick = '请输入昵称';
  static const String forgetPassword = '忘记密码';
  static const String checkCodeError = '验证码失效，请重新获取';
  static const String getCheckCode = '获取验证码';
  static const String nextStep = '下一步';
  static const String reSend = '重新发送';
  static const String reSendSuf = '后重新发送验证码';
  static const String mobileNotRegister = '该手机号未注册';
  static const String completeSelfInfo = '完善个人信息';
  static const String validatorNickTip = '最多20个字符，支持汉字、字母、数字';
  static const String validatorPwdTip = '8-16个字符，支持字母、数字';
  static const String modifyPasswordTip = '密码最多16个字符，支持字母、数字';
  static const String modifyPassword = '修改密码';
  static const String oldPasswordVerify = '确认原密码';
  static const String connect = '连接';
  static const String wxNotInstall = '手机未安装微信';
  static const String createMeetingFail = '会议创建失败';
  static const String joinMeetingFail = '加入会议失败';
  static const String reJoinMeetingFail = '重新加入会议失败';
  static const String manageAttendees = '管理参会者';
  static const String attendees = '参会者';
  static const String invite = '邀请';
  static const String createAlreadyInMeetingTip = '这个会议还在进行中，要加入这个会议吗？';

  static const String muteAudioAll = '全体静音';
  static const String muteAudioAllDialogTips = '所有以及新加入成员将被静音';
  static const String unMuteAudioAll = '解除全体静音';
  static const String muteAudio = '静音';
  static const String unMuteAudio = '解除静音';
  static const String muteVideo = '停止视频';
  static const String unMuteVideo = '开启视频';
  static const String screenShare = '共享屏幕';
  static const String hostStopShare = '主持人已终止了您的共享';
  static const String unScreenShare = '结束共享';
  static const String focusVideo = '设为焦点视频';
  static const String unFocusVideo = '取消焦点视频';
  static const String changeHost = '移交主持人';
  static const String changeHostTips = '确认将主持人移交给';
  static const String remove = '移除';
  static const String rename = '改名';
  static const String renameTips = '请输入新的昵称';
  static const String renameSuccess = '改名成功';
  static const String renameFail = '改名失败';
  static const String removeTips = '确认移除';
  static const String yes = '是';
  static const String no = '否';
  static const String cannotRemoveSelf = '不能移除自己';
  static const String handsUpDownFail = '放下成员举手失败';
  static const String removeMemberSuccess = '移除成功';
  static const String meetingSetting = '会议设置';
  static const String feedback = '意见反馈';
  static const String personalCenter = '个人中心';
  static const String nick = '昵称';
  static const String nickSetting = '修改昵称';
  static const String nickSettingSuccess = '修改昵称成功';
  static const String nickSettingFailed = '修改昵称失败';
  static const String head = '头像';
  static const String mobile = '手机';
  static const String personalMeetingId = '个人会议ID';
  static const String logout = '退出登录';
  static const String confirmLogout = '确定要退出登录？';
  static const String kicked = '您已经被踢出';
  static const String save = '保存';
  static const String done = '完成';
  static const String problemType = '问题类型';
  static const String selectProblemType = '请选择问题类型';
  static const String problemDes = '问题描述';
  static const String inputProblem = '请输入您的意见';
  static const String submit = '提交';
  static const String modifySuccess = '修改成功';
  static const String modifyFailed = '修改失败';
  static const String passwordDifferent = '两次输入的新密码不一致，请重新输入';
  static const String passwordFormatError = '密码格式错误，请重新输入';
  static const String imFailed = '服务器连接失败';

  static const String forbiddenByHost = '您已经被主持人禁止操作';
  static const String usePersonalMeetId = '使用个人会议ID(%s)';
  static const String openCameraMeeting = '默认打开摄像头';
  static const String openMicroMeeting = '默认打开麦克风';
  static const String showMeetTime = '显示会议持续时间';
  static const String muteAllAudioTip = '允许参会者自行解除静音';
  static const String nickFormatError = '昵称格式错误，请重新输入';
  static const String pwdFormatError = '密码格式错误，请重新输入';
  static const String controlUnbind = '电视已被其他移动端遥控';
  static const String tvUnbind = '电视断开连接';
  static const String feedbackSuccess = '反馈提交成功';
  static const String feedbackError = '反馈提交失败，请重试';
  static const String muteAudioHandsUpOnTips = '主持人已将您解除静音，你可以自由发言';
  static const String shareOverLimit = '已有人在共享，您无法共享';
  static const String hasWhiteBoardShare = '共享白板时暂不支持屏幕共享';
  static const String hasScreenShareShare = '屏幕共享时暂不支持白板共享';
  static const String screenShareTips = '将开始截取您的屏幕上显示的所有内容。';
  static const String iosScreenShareTips = '请在系统控制中心中开启共享';
  static const String screenShareStopFail = '停止共享屏幕失败';
  static const String whiteBoardShareStopFail = '停止共享白板失败';
  static const String whiteBoardError = '白板内部出现异常';
  static const String whiteBoardShareStartFail = '发起白板共享失败';
  static const String screenShareStartFail = '发起共享屏幕失败';
  static const String screenShareLocalTips = '正在共享屏幕';
  static const String screenShareSuffix = '的共享屏幕';
  static const String screenShareInteractionTip = '双指分开放大画面';
  static const String whiteBoardInteractionTip = '您被授予白板互动权限';
  static const String undoWhiteBoardInteractionTip = '您被取消白板互动权限';
  static const String speakingPrefix = '正在讲话: ';
  static const String screenShareModeForbiddenOp = '共享屏幕时不能开启/停止视频';
  static const String about = '关于';
  static const String checkUpdate = '检查更新';
  static const String checkTVUpdate = '检查电视更新';
  static const String findNewVersion = '发现新版本';
  static const String noNewVersion = '您已更新到最新版本';
  static const String noUpdate = '暂不更新';
  static const String iKnow = '我知道了';
  static const String me = '我';
  static const String livePlayer = '直播会议';
  static const String live = '直播';
  static const String whiteBoard = '共享白板';
  static const String closeWhiteBoard = '退出白板';
  static const String vod = '点播';
  static const String inputPlayerLink = '请输入播放链接';
  static const String audioStateError = '当前音频被其他应用占用，请关闭后重试';
  static const String privacy = '隐私协议';
  static const String userProtocol = '用户服务协议';
  static const String copyright = '网易公司版权所有©2020-2020';
  static const String version = 'Version: ';
  static const String lockMeetingByHost = '会议已锁定，新参会者将无法加入会议';
  static const String lockMeetingByHostFail = '会议锁定失败';
  static const String unLockMeetingByHost = '会议已解锁，新参会者将可以加入会议';
  static const String unLockMeetingByHostFail = '会议解锁失败';
  static const String lockMeeting = '锁定会议';
  static const String mailLogin = '企业邮认证登录';
  static const String inputEmailHint = '请输入完整的邮箱地址';
  static const String inputEmailPwdHint = '请输入密码';
  static const String authAndLogin = '授权并登录';
  static const String email = '邮箱';
  static const String send = '发送';
  static const String inputMessageHint = '输入消息...';
  static const String chatRoomMessageSendFail = '聊天室消息发送失败';
  static const String cannotSendBlankLetter = '不支持发送空格';
  static const String chat = '聊天';
  static const String searchMember = '搜索成员';
  static const String enterChatRoomFail = '聊天室进入失败!';
  static const String newMessage = '新消息';

  static const String meetingPassword = '会议密码';
  static const String inputMeetingPassword = '请输入会议密码';
  static const String wrongPassword = '密码错误';
  static const String headsetState = '您正在使用耳机';
  static const String meetingId = '会议ID';
  static const String shortMeetingId = '会议短号';
  static const String copy = '复制';
  static const String copySuccess = '复制成功';
  static const String disableLiveAuthLevel = '直播过程中，不能修改观看直播权限';
  static const String host = '主持人';
  static const String defaultMeetingInfoTitle = '会议信息';
  static const String meetingInfoDesc = '会议正在加密保护中';
  static const String networkUnavailableCloseFail = '网络异常，结束会议失败';
  static const String muteAllHandsUpTips = '主持人已将全体静音，您可以举手申请发言';
  static const String handsUpApply = '举手申请';
  static const String cancelHandsUp = '取消举手';
  static const String cancelHandsUpTips = '是否确定取消举手？';
  static const String handsUpDown = '手放下';
  static const String whiteBoardInteract = '授权白板互动';
  static const String whiteBoardInteractFail = '授权白板互动失败';
  static const String undoWhiteBoardInteract = '撤回白板互动';
  static const String undoWhiteBoardInteractFail = '撤回白板互动失败';
  static const String inHandsUp = '举手中';
  static const String handsUpFail = '举手失败';
  static const String handsUpSuccess = '举手成功，等待主持人处理';
  static const String cancelHandsUpFail = '取消举手失败';
  static const String hostRejectAudioHandsUp = '主持人已将您的手放下';
  static const String hostAgreeAudioHandsUp = '主持人已将您解除静音，您可以自由发言';
  static const String audioAlreadyOpen = '音频已打开，无需申请举手';
  static const String sip = 'SIP电话/终端入会';
  static const String sipTip = 'sip';
  static const String meetingLive = '会议直播';
  static const String meetingLiveTitle = '会议直播主题';
  static const String meetingLiveUrl = '直播地址';
  static const String pleaseInputLivePassword = '请输入直播密码';
  static const String pleaseInputLivePasswordHint = '请输入6位数字密码';
  static const String liveInteraction = '直播互动';
  static const String liveInteractionTips = '开启后，会议室和直播间消息互相可见';
  static const String liveLevel = '仅本企业员工可参观';
  static const String liveLevelTip = '开启后，非本企业员工无法查看';
  static const String liveViewSetting = '直播视图设置';
  static const String liveViewSettingChange = '主播发生变更';
  static const String liveViewPreviewTips = '当前直播视图预览';
  static const String liveViewPreviewDesc = '请先进行\n直播视图设置';
  static const String liveStart = '开始直播';
  static const String liveUpdate = '更新直播设置';
  static const String liveStop = '停止直播';
  static const String liveGalleryView = '画廊视图';
  static const String liveFocusView = '焦点视图';
  static const String liveScreenShareView = '屏幕共享视图';
  static const String liveChooseView = '选择视图样式';
  static const String liveChooseCountTips = '选择参会者作为主播，最多选择4人';
  static const String liveStartFail = '直播开始失败,请稍后重试';
  static const String liveStartSuccess = '直播开始成功';
  static const String livePickerCount = '已选择';
  static const String livePickerCountPrefix = '人';
  static const String liveUpdateFail = '直播更新失败,请稍后重试';
  static const String liveUpdateSuccess = '直播更新成功';
  static const String liveStopFail = '直播停止失败,请稍后重试';
  static const String liveStopSuccess = '直播停止成功';
  static const String livePassword = '直播密码';
  static const String memberNotInMeeting = '成员不在会议中';
  static const String cannotSubscribeSelfAudio = '不能订阅自己的音频';
  static const String partMemberNotInMeeting = '部分成员不在会议中';
  static const String recording = '录制中';
  static const String recordingTip = '会议录制中';

  static const String memberlistTitle = '参会者';
  static const String inviteTitle = "邀请您参加会议\n\n";
  static const String meetingSubject = "会议主题：";
  static const String meetingTime = "会议时间：";
  static const String meetingID = "会议ID：";
  static const String shortMeetingID = "会议短号：";
  static const String sipID = "SIP电话/终端入会：";
  static const String meetingPwd = "会议密码：";
  static const String copyInvite = '复制邀请';
  static const String internalSpecial = '内部专用';
}
