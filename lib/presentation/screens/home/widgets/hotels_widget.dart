import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yathras/core/constant/colors.dart';
import 'package:yathras/core/constant/sizes.dart';
import 'package:yathras/core/constant/urls.dart';
import 'package:yathras/domain/models/hotels/hotels_model.dart';
import 'package:yathras/infrastructure/hotels_repository.dart';

final _hotelsProvider = FutureProvider<List<HotelModel>>((ref) async {
  return await HotelsService().getHotels();
});

class HotelsWidget extends StatelessWidget {
  const HotelsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Text(
            'Recently viewed hotels',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Consumer(
          builder: (context, ref, __) {
            final AsyncValue<List<HotelModel>> hotelValue = ref.watch(_hotelsProvider);

            return hotelValue.when(
              data: ((hotels) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListView.separated(
                      itemCount: hotels.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final String hotelName = hotels[index].hotelName;
                        final String hotelImageUrl = imageAppendUrl + hotels[index].filePath;
                        final String hotelAddress = hotels[index].address;

                        return Card(
                          elevation: 3,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                            // height: 45.w,
                            width: 33.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 32.w,
                                      width: 33.w,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                                        child: Image.network(
                                          hotelImageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite_outline,
                                            color: kWhite,
                                          )),
                                    )
                                  ],
                                ),
                                kHeight10,
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            hotelName,
                                            maxLines: 1,
                                            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            hotelAddress,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 13.sp, color: kColorDim, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => kWidtht20,
                    ),
                  ),
                );
              }),
              error: (e, t) {
                log(e.toString());
                log(t.toString());
                return const Text('Something went wrong');
              },
              loading: () => const CircularProgressIndicator(),
            );
          },
        )
      ],
    );
  }
}
