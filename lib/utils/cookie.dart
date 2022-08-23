import 'dart:html';

Map<String, String> getCookie() {
  final cookie = document.cookie!;
  final entity = cookie.split("; ").map((item) {
    final split = item.split("=");
    if (split.length == 2) {
      return MapEntry(split[0], split[1]);
    }
    return const MapEntry('', '');
  });
  final cookieMap = Map.fromEntries(entity);
  return cookieMap;
}

void setCookie({
  required String key,
  required String value,
}) {
  document.cookie = '$key=$value';
}

void clearCookie(String key) {
  final then = DateTime.now();
  document.cookie = '$key=; expires=$then; path=/';
}
