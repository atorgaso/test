import 'package:flutter/material.dart';
import 'package:flutter_busapp/utils/app_layout.dart';
import 'package:flutter_busapp/utils/app_styles.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          const Text("Buy your ticket now", style: TextStyle(
            fontSize: 26,
            color: Color(0xFF3b3b3b),
            fontWeight: FontWeight.bold)),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
            padding: const EdgeInsets.all(3.5),
            child: Row(
              children: [
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
                  child: Center(child: Text("Bus and minibus")),
                ),
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.grey.shade200),
                  child: Center(child: Text("Taxi")),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              color: const Color(0xFFF4F6FD)
            ),
          ),
          )
        ],
      ),
    );
  }
  
}