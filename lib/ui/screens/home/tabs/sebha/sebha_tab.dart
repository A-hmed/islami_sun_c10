import 'package:flutter/material.dart';
import 'package:islami_sun_c10/ui/utils/app_assets.dart';
import 'package:islami_sun_c10/ui/utils/app_colors.dart';

class SebhaTab extends StatefulWidget {
  static const routeName = "sebha";

  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Stack(
          children: [
            Positioned(
                top: 0,
                left: 150,
                child: Image(image: AssetImage(AppAssets.headOfSebha))),
            Padding(
              padding: EdgeInsets.all(75.0),
              child: Image(image: AssetImage(AppAssets.bodyOfSebha)),
            ),
          ],
        ),
        const Text(
          "عدد التسبيحات",
          style: TextStyle(
              color: AppColors.lightBlack,
              backgroundColor: AppColors.transparent,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kamony,
          ),
          child: Text(
            "${counter}",
            style: const TextStyle(
                color: AppColors.lightBlack,
                backgroundColor: AppColors.kamony,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          onTap: updateCounter,
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              "سبحان اللة",
              style: TextStyle(
                fontSize: 25,
                color: AppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  void updateCounter() {
    counter++;
    setState(() {

    });
  }
}
