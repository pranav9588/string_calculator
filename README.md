# 🧪 Dart String Calculator – TDD Assessment

This project implements a **String Calculator** using the principles of **Test-Driven Development (TDD)** in **Dart**. It is based on the TDD exercise from [Incubyte's blog](https://blog.incubyte.co/blog/tdd-assessment/).

---

## 📋 Problem Statement

Implement a method `add(String numbers)` that takes a string of comma-separated (or custom-delimited) numbers and returns their sum, following a sequence of growing requirements.

---

## 🔧 Requirements Covered

* ✅ Return 0 for an empty string
* ✅ Return the number for a single input like `"5"`
* ✅ Return sum for comma-delimited numbers like `"1,2"`
* ✅ Support newlines as delimiters: `"1\n2,3"`
* ✅ Support custom delimiters: `"//[;]\n1;2"`
* ✅ Support multiple delimiters: `"//[*][%]\n1*2%3"`
* ✅ Support delimiters of any length: `"//[***]\n1***2***3"`
* ✅ Ignore numbers > 1000: `"2,1001"` → `2`
* ✅ Throw exception on negative numbers, and list all of them

---

## 🧪 How to Run the Project

### 🛠 Prerequisites

* Dart SDK: [Install Dart](https://dart.dev/get-dart)

### 🚀 Setup

```bash
git clone https://github.com/your-username/dart-string-calculator.git
cd dart-string-calculator
dart pub get
```

### ✅ Run Tests

```bash
dart test
```

> All tests are located in `test/string_calculator_test.dart`.

---

## 📁 Project Structure

```
dart-string-calculator/
├── lib/
│   └── string_calculator.dart      # Main calculator logic
├── test/
│   └── string_calculator_test.dart # All unit tests
├── pubspec.yaml                    # Project metadata & dependencies
```

---

## 🧪 TDD Approach

This project follows the **Red → Green → Refactor** cycle:

1. **Red** – Write a failing test
2. **Green** – Write the minimal code to pass the test
3. **Refactor** – Improve the implementation while keeping tests green

Each new requirement was implemented through incremental commits reflecting this cycle.

---

## 💡 Sample Usage

```dart
final calc = StringCalculator();

print(calc.add("1,2"));          // 3
print(calc.add("//[***]\n1***2")); // 3
print(calc.add(""));             // 0
```

---

## 📌 Notes

* This project does **not** use any external parsing libraries—only core Dart.
* All edge cases and constraints from the kata are handled.
* Negative number support includes descriptive error messages.

---

## 📖 Reference

Inspired by the TDD exercise from:
👉 [https://blog.incubyte.co/blog/tdd-assessment](https://blog.incubyte.co/blog/tdd-assessment)
