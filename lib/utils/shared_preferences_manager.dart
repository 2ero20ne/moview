import 'package:encrypt/encrypt.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedManager {
  final String _favoriteMovieList = 'favorite_movie_list';

  Future<SharedPreferences> get preference async {
    final prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  IV getEncryptIv() {
    return IV.fromLength(16);
  }

  Encrypter getEncrypter() {
    final encryptKey = Key.fromUtf8('mfz3BjWGcTL2DJRF4HrFLn88kzRDWq7E');
    return Encrypter(AES(encryptKey));
  }

  Future<Set<String>> get getFavoriteMovieList async {
    final listStr = await getStringData(sharedKey: _favoriteMovieList);
    return listStr.isEmpty ? {} : listStr.split(',').toSet();
  }

  Future<void> setFavoriteMovie({
    required Set<String> favoriteMovieList,
  }) async {
    await setStringData(
      value: favoriteMovieList.isEmpty ? '' : favoriteMovieList.join(','),
      sharedKey: _favoriteMovieList,
    );
  }

  Future<void> setIntData({
    required int value,
    required String sharedKey,
  }) async {
    final encryptIv = getEncryptIv();
    final encrypter = getEncrypter();
    final encrypted = encrypter.encrypt(value.toString(), iv: encryptIv);
    final prefs = await preference;
    await prefs.setString(sharedKey, encrypted.base64);
  }

  Future<int> getIntData({
    required String sharedKey,
    required int initValue,
  }) async {
    final encryptIv = getEncryptIv();
    final encrypter = getEncrypter();
    final prefs = await preference;
    final data = prefs.getString(sharedKey) ?? '';

    if (data.isNotEmpty) {
      final decrypted = encrypter.decrypt64(data, iv: encryptIv);
      return int.parse(decrypted);
    } else {
      return initValue;
    }
  }

  Future<void> setStringData({
    required String value,
    required String sharedKey,
  }) async {
    final prefs = await preference;
    if (value.isNotEmpty) {
      final encryptIv = getEncryptIv();
      final encrypter = getEncrypter();
      final encrypted = encrypter.encrypt(value, iv: encryptIv);
      await prefs.setString(sharedKey, encrypted.base64);
    } else {
      await prefs.setString(sharedKey, value);
    }
  }

  Future<String> getStringData({required String sharedKey}) async {
    final encryptIv = getEncryptIv();
    final encrypter = getEncrypter();
    final prefs = await preference;
    final data = prefs.getString(sharedKey) ?? '';

    if (data.isNotEmpty) {
      final decrypted = encrypter.decrypt64(data, iv: encryptIv);
      return decrypted;
    } else {
      return '';
    }
  }

  Future<void> setBoolData({
    required bool value,
    required String sharedKey,
  }) async {
    final encryptIv = getEncryptIv();
    final encrypter = getEncrypter();
    final encrypted = encrypter.encrypt(value.toString(), iv: encryptIv);
    final prefs = await preference;
    await prefs.setString(sharedKey, encrypted.base64);
  }

  Future<bool> getBoolData({
    required String sharedKey,
    bool initValue = false,
  }) async {
    final encryptIv = getEncryptIv();
    final encrypter = getEncrypter();
    final prefs = await preference;
    final data = prefs.getString(sharedKey) ?? '';

    if (data.isNotEmpty) {
      final decrypted = encrypter.decrypt64(data, iv: encryptIv);
      return decrypted.toLowerCase() == 'true';
    } else {
      return initValue;
    }
  }
}
