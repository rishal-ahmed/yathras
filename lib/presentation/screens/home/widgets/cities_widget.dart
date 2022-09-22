import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yathras/core/constant/colors.dart';
import 'package:yathras/core/constant/sizes.dart';
import 'package:yathras/domain/models/cities/cities_model.dart';
import 'package:yathras/infrastructure/city_repository.dart';

final _citiesProvider = FutureProvider<List<CityModel>>((ref) async {
  return await CitiesServies().getCities();
});

class CitiesWidget extends StatelessWidget {
  const CitiesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Text(
            'Quick hotel search',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          trailing: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 2,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: kWhite,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded, color: kBlack, size: 14.sp),
              ),
            ),
          ),
        ),
        Consumer(
          builder: (context, ref, __) {
            final AsyncValue<List<CityModel>> cities = ref.watch(_citiesProvider);

            return cities.when(
                data: ((cities) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ListView.separated(
                        itemCount: cities.length + 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.grey.shade300,
                                  child: const Icon(
                                    Icons.my_location_outlined,
                                    color: kBlack,
                                  ),
                                ),
                                kHeight5,
                                Text(
                                  'Near me',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return Column(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kAppBarColor,
                                  child: Icon(Icons.photo),
                                ),
                                kHeight5,
                                Text(cities[index - 1].cityTitle, style: TextStyle(fontSize: 14.sp)),
                              ],
                            );
                          }
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
                loading: () => const CircularProgressIndicator());
          },
        )
      ],
    );
  }
}
