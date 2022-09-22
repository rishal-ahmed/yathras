import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yathras/core/constant/colors.dart';
import 'package:yathras/core/constant/sizes.dart';
import 'package:yathras/core/constant/text_styles.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20.h,
      decoration: const BoxDecoration(
          color: kAppBarColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Column(
          children: [
            Text(
              "India's fastest growing hotel representative",
              style: TextStyle(color: kWhite, fontSize: 17.sp),
            ),
            kHeight10,
            Container(
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(15),
                      hintText: 'Search for city locality',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                  const Divider(height: 1),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Column(
                              children: const [
                                Text('Check in', style: kTextDim),
                                kHeight5,
                                Text('01 OCT'),
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: const [
                                Text('Check out', style: kTextDim),
                                kHeight5,
                                Text('02 OCT'),
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: const [
                                Text('Guestd', style: kTextDim),
                                kHeight5,
                                Text('01'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            kHeight10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: kButtonYellow,
                minWidth: double.infinity,
                child: const Text('Search '),
              ),
            )
          ],
        ),
      ),
    );
  }
}
