import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetCheckerBanner {
  late StreamSubscription listen;

  // listen the connection  status
  StreamSubscription initialize(BuildContext context,
      {String title = "No internet!"}) {
    listen = InternetConnectionChecker().onStatusChange.listen((event) {
      if (event == InternetConnectionStatus.connected) {
        // If the internet connection is good, close the banner
        ScaffoldMessenger.of(context).clearMaterialBanners();
      } else {
        // If the internet connection is bad or unavailable, display the banner
        debugPrint("No internet!");
        ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
          backgroundColor: Colors.red,
          content: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          leading: const Icon(
            Icons.error,
            color: Colors.white,
          ),
          overflowAlignment: OverflowBarAlignment.start,
          actions: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).clearMaterialBanners();
              },
              child: const Text("OK"),
              style: TextButton.styleFrom(primary: Colors.white),
            )
          ],
        ));
      }
    });
    return listen;
  }

  void dispose() {
    listen.cancel();
  }
}
