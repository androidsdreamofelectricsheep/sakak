import 'package:sakak/core/utils/logger.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

emailContact() async {
  Uri uri = Uri.parse(
    'mailto:n01077202@humbermail.ca?subject=문의&body=안녕하세요',
  );

  try {
    await launcher.launchUrl(uri);
  } catch (e) {
    logger.e('email contact failed to luanch', error: e);
  }
}
