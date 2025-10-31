
class StrongPasswordChecker {
  bool isStrongPassword(String password) {
    if (password.length < 8) return false;

    if (!RegExp(r'[A-Z]').hasMatch(password)) return false;

    if (!RegExp(r'[a-z]').hasMatch(password)) return false;

    if (!RegExp(r'\d').hasMatch(password)) return false;

    if (!RegExp(r'[!@#\$&*~]').hasMatch(password)) return false;
    return true;
  }
}

void main() {
  var passwordChecker = StrongPasswordChecker();

  var passwordsToTest = [
    "Password123!",
    "weakpass",
    "NoSpecialChar1",
    "Short1!",
    "StrongPass1@"
  ];

  for (var password in passwordsToTest) {
    if (passwordChecker.isStrongPassword(password)) {
      print('"$password" is a strong password.');
    } else {
      print('"$password" is not a strong password.');
    }
  }
}