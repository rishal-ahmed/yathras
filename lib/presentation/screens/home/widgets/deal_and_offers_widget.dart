import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yathras/core/constant/sizes.dart';

class DealsAndOffersWidget extends StatelessWidget {
  const DealsAndOffersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          const ListTile(
            leading: Text(
              'Deals & Offers',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/diwali.png',
                    width: 80.w,
                    fit: BoxFit.fill,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => kWidtht20,
            ),
          ),
        ],
      ),
    );
  }
}
