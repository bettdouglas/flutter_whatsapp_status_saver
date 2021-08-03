import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_color_scheme/random_color_scheme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:status_saver/io_functions.dart';
import 'package:status_saver/models.dart';
import 'package:status_saver/providers.dart';
import 'package:status_saver/video_player_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final colorScheme = randomColorScheme(isDark: false, shouldPrint: false);
    return ResponsiveSizer(
      builder: (_, __, ___) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: colorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.primary,
          ),
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final status = watch(permissionPod);
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Status Saver'),
      ),
      body: Center(
        child: status.maybeWhen(
          orElse: () => RequestPermissionWidget(
            permissionStatus: status,
          ),
          loading: () => CircularProgressIndicator(),
          granted: () => StatusesPage(),
        ),
      ),
    );
  }
}

class RequestPermissionWidget extends StatelessWidget {
  const RequestPermissionWidget({
    Key? key,
    required this.permissionStatus,
  }) : super(key: key);

  final PermissionState permissionStatus;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: Adaptive.h(10)),
          Icon(
            Icons.storage,
            size: 100,
          ),
          SizedBox(height: Adaptive.h(10)),
          Text(
            'We need storage read/write permission is required to save statuses.\nPlease allow us to access your storage',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: Adaptive.h(5)),
          ElevatedButton(
            onPressed: () {
              context.read(permissionPod.notifier).requestPermission().then(
                  (_) => context
                      .read(permissionPod.notifier)
                      .getPermissionStatus());
            },
            child: Text('ENABLE STORAGE PERMISSION'),
          ),
          Text(permissionStatus.toString()),
        ],
      ),
    );
  }
}

class StatusesPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final statusesStreamState = watch(statusesPod);
    return statusesStreamState.when(
      data: (stati) => StatusListView(statuses: stati),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, st) => ErrStWidget(
        error: err,
        message: 'Failed to get statuses',
        retryMessage: 'Try Again?',
        trace: st,
        retryFunction: () {
          context.refresh(statusesPod);
        },
      ),
    );
  }
}

class ErrStWidget extends StatelessWidget {
  const ErrStWidget({
    Key? key,
    required this.error,
    required this.message,
    required this.trace,
    required this.retryFunction,
    required this.retryMessage,
  }) : super(key: key);

  final StackTrace? trace;
  final Object error;
  final String message;
  final VoidCallback? retryFunction;
  final String retryMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          SizedBox(height: Adaptive.h(3)),
          Icon(Icons.error),
          SizedBox(height: Adaptive.h(3)),
          Text(error.toString()),
          ElevatedButton(
            onPressed: retryFunction,
            child: Text(retryMessage),
          ),
        ],
      ),
    );
  }
}

class StatusListView extends StatelessWidget {
  const StatusListView({
    Key? key,
    required this.statuses,
  }) : super(key: key);

  final List<Status> statuses;

  @override
  Widget build(BuildContext context) {
    print(statuses.length);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: Adaptive.w(50),
        childAspectRatio: 2 / 2,
        crossAxisSpacing: Adaptive.h(1),
        // mainAxisSpacing: Adaptive.w(10),
      ),
      itemBuilder: (_, idx) {
        final status = statuses[idx];
        return Stack(
          children: [
            Container(
              height: Adaptive.h(15),
              color: Colors.black,
              margin: EdgeInsets.all(10),
              child: status.when(
                img: (stat, path) => Image.file(
                  File(path),
                  width: Adaptive.w(40),
                ),
                video: (stat, path) => VideoThumbWidget(
                  videoPath: path,
                  height: Adaptive.h(50),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.grey.withOpacity(0.5),
                height: Adaptive.h(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {
                        status.map(
                          img: (img) => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ImageFullViewPage(status: status),
                            ),
                          ),
                          video: (v) => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => VideoPlayerPage(status: status),
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.download_for_offline),
                      onPressed: () async {
                        final didSave = await saveStatus(status);
                        if (didSave) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Row(
                                children: [
                                  Icon(Icons.check),
                                  SizedBox(width: Adaptive.w(1)),
                                  Text('Status successfully saved'),
                                ],
                              ),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Row(
                                children: [
                                  Icon(Icons.error),
                                  SizedBox(width: Adaptive.w(1)),
                                  Text('Failed to save status'),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
      itemCount: statuses.length,
    );
  }
}

class ImageFullViewPage extends StatelessWidget {
  const ImageFullViewPage({
    Key? key,
    required this.status,
  }) : super(key: key);

  final Status status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(status.basename),
        actions: [
          IconButton(
            onPressed: () {
              saveStatus(status);
            },
            icon: Icon(Icons.download),
          ),
        ],
      ),
      body: Center(
        child: Image.file(
          File(status.filePath),
        ),
      ),
    );
  }
}
