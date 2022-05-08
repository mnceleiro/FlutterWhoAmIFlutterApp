import 'package:url_launcher/url_launcher.dart';

class CardViewModel {
  void makePhoneCall(phone) {
    final Uri tellaunchUri = Uri(
      scheme: 'tel',
      path: phone,
    );

    launchUrl(tellaunchUri);
  }

  void sendEmail(email) {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: _encodeQueryParameters(<String, String>{
        'subject': 'Hola clase'
      }),
    );

    launchUrl(emailLaunchUri);
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }




}