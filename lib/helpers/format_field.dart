String getStanitizedText(String text) {
  return text.replaceAll(RegExp(r'[^\d]'), '');
}
