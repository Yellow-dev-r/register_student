String getAlphabeticGrade(List<String> grades) {
  final gradesNumber = grades.map((e) => double.parse(e)).toList();
  final result = gradesNumber.fold(
      0.0, (double previousValue, double element) => previousValue + element);

  return getLetter(result);
}

String getLetter(double totalGrades) {
  if (totalGrades < 1) return 'n/a';
  if (totalGrades < 70) return 'F';
  if (totalGrades < 80) return 'C';
  if (totalGrades < 90) return 'B';
  if (totalGrades < 101) return 'A';
  return 'n/a';
}
