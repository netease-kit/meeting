// Copyright (c) 2021 NetEase, Inc.  All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

part of meeting_core;

class SliderWidget extends StatefulWidget {
  final Function(int value) onChange;
  final int level;
  final bool? isShowClose;

  SliderWidget({required this.onChange, required this.level, this.isShowClose});

  @override
  State<StatefulWidget> createState() => _SliderDemo();
}

class _SliderDemo extends State<SliderWidget> {
  bool isOpenBeauty = false;
  late int _level;

  @override
  void initState() {
    super.initState();
    _level = widget.level;
    isOpenBeauty = _level == 0 ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 48,
              child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    SizedBox(
                      width: 40,
                      height: 48.0,
                    ),
                        // Container(
                        //   margin: EdgeInsets.only(left: 15),
                        //   height: 30,
                        //   width: 40,
                        //   child: CupertinoSwitch(
                        //     key: MeetingCoreValueKey.meetingMembersLockSwitchBtn,
                        //     value: isOpenBeauty,
                        //     onChanged: (bool value) {
                        //       setState(() {
                        //         _openBeauty(value);
                        //       });
                        //     },
                        //     activeColor: UIColors.blue_337eff,
                        //   ),
                        // ),
                    Container(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            Strings.beauty,
                            style: TextStyle(
                                color: UIColors.black_333333,
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    widget.isShowClose ?? true
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: RawMaterialButton(
                              constraints: const BoxConstraints(
                                  minWidth: 40.0, minHeight: 48.0),
                              child: Icon(
                                NEMeetingIconFont.icon_yx_tv_duankaix,
                                color: UIColors.color_666666,
                                size: 15,
                                key: MeetingCoreValueKey.beautyPageClose,
                              ),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          )
                        : SizedBox(
                            width: 40,
                            height: 48.0,
                          ),
                  ])),
            ),
            line(),

        SafeArea(
          child: Container(
                height: 110,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                        Widget>[
                  SizedBox(
                    width: 20,
                  ),
                 Text(
                    Strings.beautyLevel,
                    style: TextStyle(
                        color: UIColors.black_222222,
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: SliderTheme(
                    //???????????????
                    data: SliderTheme.of(context).copyWith(

                        ///???????????????????????????
                        activeTrackColor: Color(0xff337EFF),

                        ///???????????????????????????
                        inactiveTrackColor: Color(0xffF0F0F2),

                        ///???????????????,?????????????????????????????????
                        trackShape: RoundSliderTrackShape(radius: 5),

                        ///????????????
                        thumbColor: Colors.white,

                        ///??????????????????????????????
                        overlayColor: Color.fromRGBO(51, 126, 255, 0.70),
                        overlayShape: RoundSliderOverlayShape(
                          ///?????????SliderComponentShape???????????????
                          overlayRadius: 12, //??????????????????
                        ),
                        thumbShape: RoundSliderThumbShape(
                          ///?????????SliderComponentShape???????????????
                          disabledThumbRadius: 10,

                          ///?????????????????????
                          enabledThumbRadius: 10,

                          ///????????????
                        ),
                        inactiveTickMarkColor: Colors.black,
                        tickMarkShape: RoundSliderTickMarkShape(
                          ///??????SliderTickMarkShape????????????????????????
                          tickMarkRadius: 2.0, //????????????
                        ),
                        showValueIndicator: ShowValueIndicator.onlyForDiscrete,

                        ///?????????????????????
                        valueIndicatorColor: Colors.red,

                        ///????????????
                        valueIndicatorShape: PaddleSliderValueIndicatorShape(),

                        ///????????????
                        valueIndicatorTextStyle: TextStyle(color: Colors.black),

                        ///?????????????????????
                        trackHeight: 4

                        ///???????????????

                        ),
                    child:  Slider(
                      key: MeetingCoreValueKey.beautyLevelSlider,
                      value: _level.toDouble(),
                      min: 0,
                      max: 10,
                      // label: "??????:$value",
                      //             //????????????
                      //             divisions: 10,
                      //             //????????????????????????????????????
                      label: '$_level',
                      onChanged: (double newValue) {
                        setState(() {
                          _level = newValue.round();
                          isOpenBeauty = _level != 0;
                        });
                        widget.onChange(_level);
                      },
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ]))),
          ],
        ));
  }

  Widget line() {
    return Container(
      color: Colors.white,
      child: Container(
        color: UIColors.colorE8E9EB,
        height: 0.5,
      ),
    );
  }

  void _openBeauty(bool value) {
    isOpenBeauty = !isOpenBeauty;
    if (!isOpenBeauty) {
      _level = 0;
    }
    widget.onChange(_level);
  }
}
