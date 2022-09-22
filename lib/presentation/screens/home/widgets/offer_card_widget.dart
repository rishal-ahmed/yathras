import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OfferCardWidget extends StatelessWidget {
  const OfferCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        height: 13.h,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/images/diwali.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
