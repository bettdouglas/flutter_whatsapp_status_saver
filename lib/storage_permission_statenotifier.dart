import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart'
    hide PermissionStatus;
import 'package:status_saver/models.dart';

class PermissionStatusHandler extends StateNotifier<PermissionState> {
  PermissionStatusHandler() : super(const PermissionState.initial()) {
    getPermissionStatus();
  }

  Future getPermissionStatus() async {
    state = PermissionState.loading();
    state = await _permissionStatus();
  }

  Future<PermissionState> _permissionStatus() async {
    final status = await Permission.storage.status;
    // final ext = await Permission.manageExternalStorage.status;
    // final ext = await Permission.manageExternalStorage.status;
    if (status.isDenied) {
      return PermissionState.denied();
    } else if (status.isGranted) {
      return PermissionState.granted();
    }
    if (status.isPermanentlyDenied) {
      return PermissionState.permanentlyDenied();
    }
    if (status.isLimited) {
      return PermissionState.granted();
    }
    if (status.isPermanentlyDenied) {
      return PermissionState.permanentlyDenied();
    }
    if (status.isRestricted) {
      return PermissionState.restricted();
    }
    throw Exception('Unknown permission status. $status');
  }

  Future requestPermission() async {
    final status = await _permissionStatus();
    status.maybeWhen(
      orElse: () async => await Permission.storage.request(),
      granted: () => null,
    );
    await getPermissionStatus();
  }
}
