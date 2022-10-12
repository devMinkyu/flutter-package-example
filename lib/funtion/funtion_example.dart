class FunctionExample {
  static void kakaobank(
    String noOption, {
    required String requiredOption,
    String notRequiredOption = '',
    String? nullOption,
  }) {}

  static void kakaobankStart() {
    kakaobank('필수다', requiredOption: '이것도');
  }

  // same (int) -> int
  static void highOrderFunction1(int Function(int) test) {}

  // same (int) -> Unit
  static void highOrderFunction2(Function(int) test) {}

  // same () -> Unit
  static void highOrderFunction3(Function test) {}

  static void highOrderFunctionStart() {
    highOrderFunction1((p0) {
      return p0;
    });
    highOrderFunction2((p0) {});
    highOrderFunction3(() {});
  }
}
