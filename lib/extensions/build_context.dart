import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../domain/common/app_exception.dart';
import '../providers.dart';
import '../routing/app_route.dart';
import '../utils/theme_data.dart';

extension BuildContextExtension on BuildContext {
  Locale get locale => Localizations.localeOf(this);

  DateFormat get dateFormat =>
      DateFormat('yyyy/MM/dd(E) HH:mm', locale.languageCode);

  DateFormat get yMd => DateFormat.yMd(locale.languageCode);

  DateFormat get yM => DateFormat.yM(locale.languageCode);

  // ignore: non_constant_identifier_names
  DateFormat get Md => DateFormat.Md(locale.languageCode);

  // ignore: non_constant_identifier_names
  DateFormat get Hm => DateFormat.Hm(locale.languageCode);

  ThemeData get theme => Theme.of(this);

  Size get deviceSize => Size(
        MediaQuery.of(this).size.width,
        MediaQuery.of(this).size.height,
      );

  double get largeButtonWidth => MediaQuery.of(this).size.width * 0.85;

  double get bottomSafeArea => MediaQuery.of(this).padding.bottom;

  void positivePop() => Navigator.of(this).pop(true);
  void negativePop() => Navigator.of(this).pop(false);

  void _appPushNamedString(
    String path, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      GoRouter.of(this).pushNamed(
        path,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );

  void appPushNamed(
    AppRoute route, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      _appPushNamedString(
        route.path,
        params: params,
        queryParams: queryParams,
        extra: extra,
      );

  void appGoNamed(
    AppRoute route, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      _goNamedString(
        route.path,
        params: params,
        queryParams: queryParams,
        extra: extra,
      );

  void _goNamedString(
    String path, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      GoRouter.of(this).goNamed(
        path,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );

  void pop() => GoRouter.of(this).pop();

  void popToFirstPage() =>
      Navigator.of(this).popUntil((route) => route.isFirst);

  T getArgs<T>() => ModalRoute.of(this)!.settings.arguments as T;

  void recordError(WidgetRef ref, dynamic error, StackTrace? stack) =>
      ref.read(crashlyticsProvider).recordError(error, stack);

  /// メッセージはトースト、エラーはダイアログで表示する
  void showErrorDialogOrMessageToast(
    WidgetRef ref,
    AsyncValue<void> currentState, {
    VoidCallback? onButtonClicked,
  }) {
    final error = currentState.error;
    if (error == null) {
      return;
    }
    final messageError = error is AppException;
    final exception = error is Exception;

    if (messageError) {
      showErrorMessageOnSnackBar(error);
      return;
    }

    if (exception) {
      showErrorDialog(
        ref,
        error,
        stack: currentState.stackTrace,
        onButtonClicked: onButtonClicked,
      );
    }
  }

  void showErrorDialog(
    WidgetRef ref,
    dynamic error, {
    StackTrace? stack,
    VoidCallback? onButtonClicked,
  }) {
    final currentStack = stack ?? StackTrace.current;
    ref.read(crashlyticsProvider).recordError(error, currentStack);
    Future.delayed(
      Duration.zero,
      () => showAlertDialog(
        title: 'Error',
        message: error.toString(),
        negativeButtonText: null,
        onPositiveButtonClicked: onButtonClicked,
      ),
    );
  }

  Future<bool?> showSimple({
    String title = '',
    String content = '',
    String applyButtonName = 'OK',
    VoidCallback? applyAction,
    bool isShowCancelButton = false,
    bool barrierDismissible = false,
  }) async {
    return showDialog<bool>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext childContext) {
        return AlertDialog(
          title: title.isEmpty
              ? null
              : Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryTextTheme.bodyLarge!.color,
                  ),
                ),
          content: content.isEmpty
              ? null
              : SingleChildScrollView(
                  child: Text(
                    content,
                    style: TextStyle(
                      fontSize: 12,
                      color: theme.primaryTextTheme.bodyLarge!.color,
                    ),
                  ),
                ),
          actions: <Widget>[
            if (isShowCancelButton)
              TextButton(
                onPressed: () {
                  Navigator.pop(childContext, false);
                },
                child: const Text('Cancel'),
              ),
            TextButton(
              onPressed: () {
                if (applyAction != null) {
                  applyAction();
                }
                Navigator.pop(childContext, true);
              },
              child: Text(
                applyButtonName,
                style: TextStyle(
                  color: theme.primaryTextTheme.bodyLarge!.color,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> showAlertDialog({
    required String title,
    String? message,
    Widget? content,
    String? positiveButtonText,
    String? negativeButtonText = '',
    VoidCallback? onPositiveButtonClicked,
    VoidCallback? onNegativeButtonClicked,
    VoidCallback? onPositiveDismissed,
    VoidCallback? onNegativeDismissed,
    bool isDestructiveActionLeft = false,
    bool needsCancel = true,
    bool barrierDismissible = false,
  }) async {
    final result = await showDialog<bool?>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        final negativeText =
            negativeButtonText != null && negativeButtonText != ''
                ? negativeButtonText
                : 'Cancel';
        return Platform.isAndroid
            ? AlertDialog(
                title: Text(title),
                content: SingleChildScrollView(
                  child: message == null ? content : Text(message),
                ),
                actions: <Widget>[
                  if (negativeButtonText != null)
                    TextButton(
                      child: Text(
                        negativeText,
                      ),
                      onPressed: () {
                        onNegativeButtonClicked?.call();
                        negativePop();
                      },
                    ),
                  TextButton(
                    child: Text(
                      positiveButtonText ?? 'OK',
                      style: TextStyle(
                        color: isDestructiveActionLeft
                            ? OriginalTheme.negative
                            : null,
                      ),
                    ),
                    onPressed: () {
                      onPositiveButtonClicked?.call();
                      positivePop();
                    },
                  ),
                ],
              )
            : CupertinoAlertDialog(
                title: Text(title),
                content: Material(
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: message == null ? content : Text(message),
                  ),
                ),
                actions: [
                  if (negativeButtonText != null)
                    CupertinoDialogAction(
                      onPressed: () {
                        onNegativeButtonClicked?.call();
                        negativePop();
                      },
                      child: Text(
                        negativeText,
                      ),
                    ),
                  CupertinoDialogAction(
                    isDestructiveAction: isDestructiveActionLeft,
                    child: Text(
                      positiveButtonText ?? 'OK',
                    ),
                    onPressed: () {
                      onPositiveButtonClicked?.call();
                      positivePop();
                    },
                  ),
                ],
              );
      },
    );
    if (result == null) {
      return;
    }
    if (onPositiveDismissed != null && result) {
      onPositiveDismissed();
      return;
    }
    if (onNegativeDismissed != null && !result) {
      onNegativeDismissed();
      return;
    }
  }

  Future<void> showContentDialog({
    String? title,
    required Widget content,
    String? positiveButtonText,
    String? negativeButtonText = '',
    VoidCallback? onPositiveButtonClicked,
    VoidCallback? onNegativeButtonClicked,
    bool isDestructiveActionLeft = false,
    bool needsCancel = true,
    bool barrierDismissible = false,
  }) async {
    return showDialog<void>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        final negativeText =
            negativeButtonText != null && negativeButtonText != ''
                ? negativeButtonText
                : 'Cancel';
        return Platform.isAndroid
            ? AlertDialog(
                title: title == null ? null : Text(title),
                content: content,
                actions: <Widget>[
                  Visibility(
                    visible: negativeButtonText != null,
                    child: TextButton(
                      child: Text(
                        negativeText,
                      ),
                      onPressed: () {
                        onNegativeButtonClicked?.call();
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  TextButton(
                    child: Text(
                      positiveButtonText ?? 'OK',
                      style: TextStyle(
                        color: isDestructiveActionLeft
                            ? OriginalTheme.negative
                            : null,
                      ),
                    ),
                    onPressed: () {
                      onPositiveButtonClicked?.call();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              )
            : CupertinoAlertDialog(
                title: title == null ? null : Text(title),
                content: content,
                actions: [
                  Visibility(
                    visible: negativeButtonText != null,
                    child: CupertinoDialogAction(
                      onPressed: () {
                        onNegativeButtonClicked?.call();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        negativeText,
                      ),
                    ),
                  ),
                  CupertinoDialogAction(
                    isDestructiveAction: isDestructiveActionLeft,
                    child: Text(
                      positiveButtonText ?? 'OK',
                    ),
                    onPressed: () {
                      onPositiveButtonClicked?.call();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
      },
    );
  }

  Future<void> showInputDialog({
    required String title,
    String? message,
    required TextEditingController controller,
    String? positiveButtonText,
    String? negativeButtonText,
    required VoidCallback onButtonClicked,
    bool isDestructiveActionLeft = false,
    bool needsCancel = true,
    bool barrierDismissible = false,
  }) {
    return showDialog<void>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return Platform.isAndroid
            ? AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (message != null) Text(message),
                    TextField(controller: controller),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text(
                      negativeButtonText ?? 'Close',
                      style: TextStyle(
                        color: isDestructiveActionLeft
                            ? OriginalTheme.negative
                            : null,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    onPressed: onButtonClicked,
                    child: Text(
                      positiveButtonText ?? 'OK',
                    ),
                  ),
                ],
              )
            : CupertinoAlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (message != null) Text(message),
                    CupertinoTextField(controller: controller),
                  ],
                ),
                actions: [
                  CupertinoDialogAction(
                    isDestructiveAction: isDestructiveActionLeft,
                    onPressed: pop,
                    child: Text(
                      negativeButtonText ?? 'Cancel',
                    ),
                  ),
                  CupertinoDialogAction(
                    onPressed: onButtonClicked,
                    child: Text(
                      positiveButtonText ?? 'OK',
                    ),
                  ),
                ],
              );
      },
    );
  }

  void showSnackBar({required String text}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }

  void showErrorMessageOnSnackBar(Exception? exception) {
    final isMessage = exception is AppException;
    final text = exception?.toString() ?? '';
    final prefix = isMessage ? '' : 'Error';
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text('$prefix$text'),
      ),
    );
  }
}
