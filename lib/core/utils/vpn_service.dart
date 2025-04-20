import 'package:vpn_detector/vpn_detector.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

class VpnService {
  static final VpnService _instance = VpnService._privateConstructor();
  factory VpnService() {
    return _instance;
  }
  VpnService._privateConstructor();

  Future<bool> isVpnActive() async {
    return await VpnDetector().isVpnActive();
  }
}

class VpnMonitorService {
  static VpnMonitorService? _instance;
  static VpnMonitorService get instance {
    _instance ??= VpnMonitorService._();
    return _instance!;
  }

  VpnMonitorService._();
  void startVpnMonitoring() {
    Timer.periodic(const Duration(seconds: 10), (timer) async {
      bool isVpnActive = await VpnService().isVpnActive();
      if (isVpnActive) {
        SystemNavigator.pop();
        exit(0);
      }
    });
  }
}
