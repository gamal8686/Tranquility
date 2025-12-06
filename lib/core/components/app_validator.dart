class InputValidator {
  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty';
    } else if (value.length < 5) {
      return 'Field must be at least 5 characters';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty';
    } else if (value.length < 5) {
      return 'Password must be at least 5 characters';
    }
    return null;
  }
}
