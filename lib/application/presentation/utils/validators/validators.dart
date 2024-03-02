bool isValidPhoneNumber(String input) {
  final phoneNumberRegex = RegExp(r'\b\d{10}\b');
  return phoneNumberRegex.hasMatch(input);
}

// Regular expression for email validation
bool isValidEmail(String value) {
  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegExp.hasMatch(value);
}

bool isValidName(String input) {
  final nameRegex = RegExp(r'^[a-zA-Z]+(\s[a-zA-Z]+)?$');
  return nameRegex.hasMatch(input);
}
