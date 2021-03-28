import 'dart:async';

import 'package:flutter/material.dart';

import 'flash_helper.dart';

abstract class Helpers {
  static Future<void> showSuccessOverlay(
    BuildContext context, {
    @required String message,
  }) {
    if (context == null) return Future.value();
    final completer = Completer();
    Future.delayed(const Duration(seconds: 3))
        .then((_) => completer.complete());

    FlashHelper.blockSuccessMessage(
      context,
      message: message,
      dismissCompleter: completer,
    );
    return completer.future;
  }

  static Future<void> showMessageOverlay(
    BuildContext context, {
    @required String message,
  }) {
    if (context == null) return Future.value();
    final completer = Completer();
    Future.delayed(const Duration(seconds: 3))
        .then((_) => completer.complete());

    FlashHelper.blockMessage(
      context,
      message: message,
      dismissCompleter: completer,
    );
    return completer.future;
  }
}
