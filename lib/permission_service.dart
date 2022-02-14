import 'package:permission_handler/permission_handler.dart';

/// Service to handle requesting of permissions.
/// Using extension methods disables testing
class PermissionService {
  PermissionService();

  /// Check the status of a specific [Permission]
  Future<PermissionStatus> status(Permission permission) {
    return permission.status;
  }

  /// Open the app settings.
  Future<bool> openAppSettings() {
    return openAppSettings();
  }

  /// Request permissions for a single permission.
  Future<PermissionStatus> request(Permission permission) {
    return permission.request();
  }
}
