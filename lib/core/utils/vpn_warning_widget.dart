import 'package:dweather/core/utils/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class VPNWarningWidget extends StatelessWidget {
  final bool isVpnActive;

  const VPNWarningWidget({super.key, required this.isVpnActive});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              (isVpnActive) ? "VPN Detected" : "Access Denied",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                fontFamily: 'MoriGothic',
              ),
            ),
            AutoSizeText(
              (isVpnActive)
                  ? "You are connected to a VPN. Please disable it to use the app."
                  : "Your current location or VPN usage is restricted.",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'MoriGothic',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    SystemNavigator.pop();
                    exit(0);
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.kPrimaryColor,
                    ),
                    child: const Center(
                      child: Text(
                        "Ok",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kWhiteColor,
                          fontFamily: 'MoriGothic',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
