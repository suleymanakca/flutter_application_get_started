import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  Future<void> launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      //doğrusu bu yöntem ancak canLaunchUrl için manifeste ekleme yapılacak, orayı şimdilik atladım :)
      await launchUrl(url);
    }
  }
}
