class CustomNumberGenerator {
  int _max;
  int _last;

  CustomNumberGenerator(int max) {
    this._max = max;
    _last = new DateTime.now().millisecondsSinceEpoch % _max;
  }

  int nextInt() {
    _last = (_last * 33029 + 3) % 33053;
    return _last % _max;
  }
}