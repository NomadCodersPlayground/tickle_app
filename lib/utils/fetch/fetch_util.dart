typedef AsyncFunction = Future<void> Function();

class FetchUtil {
  static Future<void> loadingIndicatorAsync(AsyncFunction fetch) async {
    await fetch();
  }
}