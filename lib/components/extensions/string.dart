/// Convenience extension to work with [String]
extension StringExtensions on String? {
  /// Will return true if the [String] is null or empty.
  bool get isNullOrWhiteSpace {
    return this == null || this!.trim().isEmpty;
  }
}
