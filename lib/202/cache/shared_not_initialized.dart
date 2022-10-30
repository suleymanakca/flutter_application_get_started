class SharedNotInitializedException implements Exception {
  @override
  String toString() {
    return 'Your preferences is not initialized right now';
  }
}
