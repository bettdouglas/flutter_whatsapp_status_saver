import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:status_saver/main.dart';
import 'package:status_saver/permission_service.dart';
import 'package:status_saver/providers.dart';
import 'permission_service_test.dart';

void main() {
  testWidgets('finds homepage', (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(child: MyApp()));
    final home = find.byType(HomePage);
    expect(home, findsOneWidget);
    expect(find.text('WhatsApp Status Saver'), findsOneWidget);
  });

  group('Permission Status', () {
    late PermissionService permissionService;

    setUpAll(() {
      registerFallbackValue(Permission.accessMediaLocation);
    });

    setUp(() {
      permissionService = MockPermissionService();
    });

    testWidgets(
      'shows request permission widget when denied',
      (WidgetTester tester) async {
        when(() => permissionService.request(any())).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        when(() => permissionService.status(any())).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        await tester.pumpWidget(ProviderScope(
          overrides: [
            permissionServiceProvider.overrideWithValue(permissionService)
          ],
          child: MyApp(),
        ));
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        await tester.pumpAndSettle();
        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.byType(RequestPermissionWidget), findsOneWidget);
      },
    );

    testWidgets(
      'shows update when permission is granted',
      (WidgetTester tester) async {
        when(() => permissionService.request(any())).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        when(() => permissionService.status(any())).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        await tester.pumpWidget(ProviderScope(
          overrides: [
            permissionServiceProvider.overrideWithValue(permissionService)
          ],
          child: MyApp(),
        ));
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        await tester.pumpAndSettle();
        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.byType(RequestPermissionWidget), findsOneWidget);

        // reset(permissionService);

        when(() => permissionService.request(any())).thenAnswer(
          (_) async => PermissionStatus.granted,
        );
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        verify(() => permissionService.request(any())).called(1);
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        // expect(find.byType(RequestPermissionWidget), findsNothing);
        // expect(find.byType(StatusesPage), findsOneWidget);
      },
    );

    testWidgets(
      'shows statuses page widget when granted',
      (WidgetTester tester) async {
        when(() => permissionService.request(any())).thenAnswer(
          (_) async => PermissionStatus.granted,
        );
        when(() => permissionService.status(any())).thenAnswer(
          (_) async => PermissionStatus.granted,
        );
        await tester.pumpWidget(ProviderScope(
          overrides: [
            permissionServiceProvider.overrideWithValue(permissionService)
          ],
          child: MyApp(),
        ));
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        await tester.pumpAndSettle();
        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.byType(StatusesPage), findsOneWidget);
      },
    );
  });
}
