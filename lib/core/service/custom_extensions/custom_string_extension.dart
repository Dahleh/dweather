extension CustomStringExtension on String? {
  String? toTitleCase() {
    if (this == null || this!.isEmpty) {
      return this;
    } else {
      List<String> words = this!.split(' ');

      for (int i = 0; i < words.length; i++) {
        if (words[i].isNotEmpty) {
          words[i] =
              words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
        }
      }

      return words.join(' ');
    }
  }
}
