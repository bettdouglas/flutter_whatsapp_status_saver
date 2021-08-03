import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:status_saver/io_functions.dart';
part 'models.freezed.dart';

@freezed
class StatusStatus with _$StatusStatus {
  const factory StatusStatus.initial() = _StatusStatusInitial;
  const factory StatusStatus.loading() = _StatusStatusLoading;
  const factory StatusStatus.loaded(List<Status> stati) = _StatusStatusLoaded;
}

@freezed
class PermissionState with _$PermissionState {
  const factory PermissionState.initial() = _PermissionInitial;
  const factory PermissionState.loading() = _PermissionLoading;
  const factory PermissionState.denied() = _PermissionDenied;
  const factory PermissionState.permanentlyDenied() =
      _PermissionPermanentlyDenied;
  const factory PermissionState.granted() = _PermissionGranted;
  const factory PermissionState.limited() = _PermissionLimited;
  const factory PermissionState.restricted() = _PermissionRestricted;
}

@freezed
class Status with _$Status {
  const factory Status.img(
    FileStat fileStat,
    String name,
  ) = _Image;
  const factory Status.video(
    FileStat fileStat,
    String name,
  ) = _Video;
}

extension StatusFileNameExtension on Status {
  String get filePath => when(img: (_, n) => n, video: (_, n) => n);
  String get basename => getBaseName(filePath);
}
