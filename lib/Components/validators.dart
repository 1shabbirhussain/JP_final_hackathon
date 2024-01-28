String? inputValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a value';
  }
  return null;
}

String? phoneNumberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a phone number';
  }

  // Remove any non-numeric characters from the input
  String numericValue = value.replaceAll(RegExp(r'[^0-9]'), '');

  // Regular expression for a simple phone number format (10 digits)
  final RegExp phoneNumberRegExp = RegExp(r'^[0-9]{10}$');

  if (!phoneNumberRegExp.hasMatch(numericValue)) {
    return 'Please enter a valid 10-digit phone number';
  }

  return null;
}
