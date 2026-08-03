import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class CachedAppSettings {
  final bool? darkMode;
  final String? languageCode;
  final int? frequency;

  const CachedAppSettings({
    this.darkMode,
    this.languageCode,
    this.frequency,
  });
}

class AppSettingsCache {
  static const _fileName = 'azkark_settings.json';

  static Future<File> _settingsFile() async {
    final directory = await getApplicationSupportDirectory();
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }
    return File('${directory.path}${Platform.pathSeparator}$_fileName');
  }

  static Future<CachedAppSettings> load() async {
    try {
      final file = await _settingsFile();
      if (!await file.exists()) return const CachedAppSettings();

      final decoded = jsonDecode(await file.readAsString());
      if (decoded is! Map<String, dynamic>) return const CachedAppSettings();

      return CachedAppSettings(
        darkMode: decoded['darkMode'] is bool ? decoded['darkMode'] : null,
        languageCode:
            decoded['languageCode'] is String ? decoded['languageCode'] : null,
        frequency: decoded['frequency'] is int ? decoded['frequency'] : null,
      );
    } catch (_) {
      return const CachedAppSettings();
    }
  }

  static Future<void> save({
    required bool darkMode,
    required String languageCode,
    required int frequency,
  }) async {
    try {
      final file = await _settingsFile();
      await file.writeAsString(
        jsonEncode({
          'darkMode': darkMode,
          'languageCode': languageCode,
          'frequency': frequency,
        }),
        flush: true,
      );
    } catch (_) {}
  }
}
