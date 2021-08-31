// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class JoinControlType{
  static const int allowJoin = 1;
  static const int forbidden = 2;

  static bool isLock(int type) {
    return type == forbidden;
  }
}