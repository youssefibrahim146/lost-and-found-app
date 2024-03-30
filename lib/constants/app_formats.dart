class AppFormats {
  static String textFormatter(text, replaced) {
    List<String> symbolsToReplace = ["(", ")", "[", "]", "{", "}", ",", "/", "_", "-", "!", "@", "#", "%", "^", "&", "*", "."];
    for (String symbol in symbolsToReplace) {
      text = text.replaceAll(symbol, replaced);
    }
    return text.replaceAll("  ", ", ");
  }
}
