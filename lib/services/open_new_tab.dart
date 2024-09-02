import 'package:url_launcher/url_launcher.dart';

Future<void> openNewTab(String? url) async {
  if (url != null && url.isNotEmpty) {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
