enum ApiStatus {
  success,
}

extension ApiStatusExtension on ApiStatus {
  int? get code => const {
        ApiStatus.success: null,
      }[this];
}
