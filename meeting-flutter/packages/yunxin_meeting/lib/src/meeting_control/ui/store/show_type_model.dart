// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ShowTypeInfo {
  int? showType;
  bool? clickable;

  ShowTypeInfo({this.showType, this.clickable});
}

class ShowTypeModel extends ShowTypeInfo with ChangeNotifier {
  final ShowTypeInfo _showTypeInfo = ShowTypeInfo(showType: showTypePresenter, clickable: false);

  @override
  int? get showType => _showTypeInfo.showType;

  @override
  bool? get clickable => _showTypeInfo.clickable;

  void changeShowType(int showType) {
    _showTypeInfo.showType = showType;
    notifyListeners();
  }

  void changeClickable(bool clickable) {
    _showTypeInfo.clickable = clickable;
    notifyListeners();
  }

  void reset(int showType, bool clickable, {bool notify = false}) {
    _showTypeInfo.showType = showType;
    _showTypeInfo.clickable = clickable;
    if (notify) {
      notifyListeners();
    }
  }
}
