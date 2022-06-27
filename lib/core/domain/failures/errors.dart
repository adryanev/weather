class NoApiKeyError extends Error {
  @override
  String toString() {
    return 'No Api Key found in storage';
  }
}

class NoApiUrlError extends Error {
  @override
  String toString() {
    return 'No Api URL found in storage';
  }
}
