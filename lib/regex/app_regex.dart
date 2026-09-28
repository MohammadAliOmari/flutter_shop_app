class AppRegex {
  AppRegex._();
  static final RegExp lettersOnly = RegExp(r'^[a-zA-Z\u0600-\u06FF\s]+$');
  static final RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9_.]+$');
  static final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  static final RegExp numberRegex = RegExp(r'\d');
  static final RegExp passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[!@#$&*]).*$');
}
