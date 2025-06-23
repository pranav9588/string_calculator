class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final delimiterPattern = RegExp(r'^//(\[.*?])+\n');
    var delimiters = [',', '\n'];
    var input = numbers;

    if (delimiterPattern.hasMatch(numbers)) {
      final match = delimiterPattern.firstMatch(numbers)!;
      final delimiterStr = match.group(0)!;
      final matches = RegExp(r'\[(.*?)\]').allMatches(delimiterStr);
      delimiters = matches.map((m) => RegExp.escape(m.group(1)!)).toList();
      input = numbers.substring(delimiterStr.length);
    }

    final splitRegex = RegExp(delimiters.join('|'));
    final nums = input.split(splitRegex).map((e) => int.tryParse(e) ?? 0);

    final negatives = nums.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('Negatives not allowed: ${negatives.join(', ')}');
    }

    return nums.where((n) => n <= 1000).reduce((a, b) => a + b);
  }
}