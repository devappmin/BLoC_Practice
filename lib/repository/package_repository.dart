import 'package:bloc_practice/domain/constant/pub_dev.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class PackageRepository {
  Future<List<Map<String, dynamic>>> getPackages(int page) async {
    // Get the packages list with the given page number on pub.dev
    final response = await http.get(
      PubDev.packageUrl(page),
      headers: {
        'Accept': 'application/json',
      },
    );

    // Check if the response is successful
    if (response.statusCode == 200) {
      Document document = parser.parse(response.body);
      List<Element> packageElements =
          document.querySelectorAll('.packages-item');

      List<Map<String, dynamic>> packages = [];

      for (var pkgs in packageElements) {
        Element? name = pkgs.querySelector('.packages-title');
        Element? description = pkgs.querySelector('.packages-description');
        Element? version = pkgs.querySelector('.packages-metadata-block');
        Element? nullSafety = pkgs.querySelector('.package-badge');
        Element? likes = pkgs.querySelector('.packages-score-value-number');
        Element? pubPoints = pkgs.querySelector('.packages-score-value-number');
        Element? popularity =
            pkgs.querySelector('.packages-score-value-number');

        packages.add({
          'name': name?.text,
          'description': description?.text,
          'version': version?.text,
          'nullSafety': nullSafety == null ? false : true,
          'likes': int.parse(likes?.text.toString() ?? '0'),
          'pubPoints': int.parse(pubPoints?.text.toString() ?? '0'),
          'popularity': int.parse(popularity?.text.toString() ?? '0'),
        });
      }

      return packages;
    } else {
      // If the response is not successful, throw an error
      throw Exception('Failed to load packages');
    }
  }
}
