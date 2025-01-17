import 'package:hive/hive.dart';

/// {@template local_analytics_api}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class LocalAnalyticsApi {
  /// {@macro local_analytics_api}
  const LocalAnalyticsApi(Box<int> localAnalyticsBox)
      : _localAnalyticsBox = localAnalyticsBox;

  final Box<int> _localAnalyticsBox;

  static const kOpeningCounterKey = 'kOpeningCounterKey';

  void increaseOpeningsCounter() {
    final currentCount = getOpeningsCounter();
    _localAnalyticsBox.put(kOpeningCounterKey, currentCount + 1);
  }

  int getOpeningsCounter() {
    final counter = _localAnalyticsBox.get(kOpeningCounterKey);
    return counter ?? 0;
  }
}
