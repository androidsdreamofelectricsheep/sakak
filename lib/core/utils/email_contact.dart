import 'package:url_launcher/url_launcher.dart' as launcher;

emailContact() async {
  Uri uri = Uri.parse(
    'mailto:n01077202@humbermail.ca?subject=문의&body=안녕하세요',
  );

  try {
    await launcher.launchUrl(uri);
  } catch (e) {
    print(e);
  }
}
