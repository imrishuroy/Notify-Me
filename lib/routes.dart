import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import '/pages/firebase_backend_page.dart';
import '/pages/home_page.dart';
import '/pages/notification_details_page.dart';

const String PAGE_HOME = '/';
const String PAGE_NOTIFICATION_DETAILS = '/notification-details';
const String PAGE_FIREBASE_TEST = '/firebase-test-page';

Map<String, WidgetBuilder> materialRoutes = {
  PAGE_HOME: (context) => HomePage(),
  PAGE_NOTIFICATION_DETAILS: (context) => NotificationDetailsPage(
        ModalRoute.of(context)!.settings.arguments as ReceivedNotification,
      ),
  PAGE_FIREBASE_TEST: (context) => FirebaseBackendPage(
        ModalRoute.of(context)!.settings.arguments as String,
      ),
};
