import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:status_saver/permission_service.dart';

class MockPermissionService extends Mock implements PermissionService {}

void main() {
  late PermissionService permissionService;

  setUpAll(() {
    registerFallbackValue(Permission.accessMediaLocation);
  });

  setUp(() {
    permissionService = MockPermissionService();
  });

  test('returns specified permission', () async {
    when(() => permissionService.request(any())).thenAnswer(
      (_) async => PermissionStatus.denied,
    );
    when(() => permissionService.status(any())).thenAnswer(
      (_) async => PermissionStatus.denied,
    );
    await expectLater(
      await permissionService.request(Permission.accessMediaLocation),
      equals(PermissionStatus.denied),
    );
    await expectLater(
      await permissionService.status(Permission.accessMediaLocation),
      equals(PermissionStatus.denied),
    );
  });
}
