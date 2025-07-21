import 'dart:io';

class ReportGenerator {
  void generateAndSend(String type, String email) {
    final data = File('data.txt').readAsStringSync();

    String formatted;
    if (type == 'html') {
      formatted = '<html lang="ar"><body>$data</body></html>';
    } else if (type == 'text') {
      formatted = data;
    } else {
      throw Exception('Unknown type');
    }

    File('out.$type').writeAsStringSync(formatted);

    // send email (imaginary)
    print('Sending to $email ...');
  }
}