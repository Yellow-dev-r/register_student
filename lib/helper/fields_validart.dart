bool validateTextGrade(String grade) {
  try {
    final number = double.tryParse(grade);
    if (number != null) {
      if (number < 36 && number > -1) return true;
      return false;
    } else
      return false;
  } catch (error) {
    throw Exception('Error Validating number $error');
  }
}

bool validateTextFinalTerm(String grade) {
  try {
    final number = double.tryParse(grade);
    if (number != null) {
      if (number < 31 && number > -1) return true;
      return false;
    } else
      return false;
  } catch (error) {
    throw Exception('Error Validating number $error');
  }
}
