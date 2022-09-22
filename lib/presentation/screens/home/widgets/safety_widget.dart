import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yathras/core/constant/colors.dart';
import 'package:yathras/core/constant/sizes.dart';

class SafetyWidget extends StatelessWidget {
  const SafetyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          const ListTile(
            leading: Text(
              'Safety first',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ListView.separated(
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/diwali.png',
                        width: 95.w,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => kWidtht20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 2,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: kWhite,
                        child: IconButton(
                          onPressed: () {
                            scrollController.animateTo(500, duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
                          },
                          icon: Icon(Icons.arrow_forward_ios_rounded, color: kBlack, size: 14.sp),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 2,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: kWhite,
                        child: IconButton(
                          onPressed: () {
                            scrollController.animateTo(-500, duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
                          },
                          icon: Icon(Icons.arrow_back_ios_rounded, color: kBlack, size: 14.sp),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
