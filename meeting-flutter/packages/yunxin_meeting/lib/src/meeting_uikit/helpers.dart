
part of meeting_uikit;

extension MeetingIdFormatter on String {
  String toMeetingIdFormat() {
    return replaceAllMapped(RegExp(r'(\d{3})(\d{3})(\d{3,})'), (match) {
      return '${match[1]}-${match[2]}-${match[3]}';
    });
  }
}