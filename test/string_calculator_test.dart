// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:string_calculator/string_calculator.dart';

void main() {
  final calc = StringCalculator();

  test('Empty string returns 0', () => expect(calc.add(''), 0));
  test('Single number returns itself', () => expect(calc.add('1'), 1));
  test('Two numbers, comma delimited', () => expect(calc.add('1,2'), 3));
  test('Newline as delimiter', () => expect(calc.add('1\n2,3'), 6));
  test('Custom delimiter ;', () => expect(calc.add('//[;]\n1;2'), 3));
  test('Negatives throw exception', () =>
      expect(() => calc.add('1,-2'), throwsA(predicate((e) =>
          e.toString().contains('Negatives not allowed')))));
  test('Ignore >1000', () => expect(calc.add('2,1001'), 2));
  test('Delimiter with length', () => expect(calc.add('//[***]\n1***2***3'), 6));
  test('Multiple delimiters', () => expect(calc.add('//[*][%]\n1*2%3'), 6));
}
