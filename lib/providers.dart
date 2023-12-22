import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'services/boot_loader_service.dart';
import 'services/deep_link_service.dart';

final crashlyticsProvider = Provider<FirebaseCrashlytics>(
  (_) => FirebaseCrashlytics.instance,
);

final authProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final firestoreProvider = Provider<FirebaseFirestore>(
  (ref) => FirebaseFirestore.instance,
);

final messagingProvider = Provider<FirebaseMessaging>(
  (ref) => FirebaseMessaging.instance,
);

final remoteConfigProvider = Provider<FirebaseRemoteConfig>(
  (ref) => FirebaseRemoteConfig.instance,
);

final analyticsProvider = Provider<FirebaseAnalytics>(
  (ref) => FirebaseAnalytics.instance,
);

final deepLinkServiceProvider = StateNotifierProvider<DeepLinkService, String?>(
  (ref) => DeepLinkService(),
);

final bootLoaderServiceProvider = Provider<ABootLoaderService>(
  BootLoaderService.new,
);

final analyticsObserverProvider = Provider<FirebaseAnalyticsObserver>(
  (ref) => FirebaseAnalyticsObserver(
    analytics: ref.watch(analyticsProvider),
  ),
);

final storageProvider = Provider<FirebaseStorage>(
  (_) => FirebaseStorage.instance,
);
