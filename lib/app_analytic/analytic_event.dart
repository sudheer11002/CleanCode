


abstract class AnalyticsEvent{
  String eventName;
  Map<String, dynamic> params;

  AnalyticsEvent({
    required this.eventName,
    required this.params});
}
