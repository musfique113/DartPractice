String sGrade(String name, int score) {
  if (score < 0 || score > 100) {
    return "Invalid Grade";
  } else if (score >= 90) {
    return "A";
  } else if (score >= 80) {
    return "B";
  } else if (score >= 70) {
    return "C";
  } else if (score >= 60) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  String sName = "Saiaf Anan";
  int score = 85;
  String grade = sGrade(sName, score);
  print("$sName grade: $grade");
}
