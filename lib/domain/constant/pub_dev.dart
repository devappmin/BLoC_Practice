class PubDev {
  static const String pubDevUrl = 'https://pub.dev/packages';
  static const String packageQuery = '?page=';

  static Uri packageUrl(int page) =>
      Uri.parse(pubDevUrl + packageQuery + page.toString());
}
