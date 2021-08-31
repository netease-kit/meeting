// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_uikit;

class LoadingUtil {
  static void showLoading() {
    BotToast.showLoading();
  }

  static void cancelLoading() {
    BotToast.closeAllLoading();
  }
}