import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/links.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapSectionWidget extends StatefulWidget {
  const MapSectionWidget({
    required this.textTheme,
    super.key,
  });

  final TextTheme textTheme;

  @override
  State<MapSectionWidget> createState() => _MapSectionWidgetState();
}

class _MapSectionWidgetState extends State<MapSectionWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = widget.textTheme;
    const point = Point(latitude: 47.242516, longitude: 38.690101);

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 246.h,
          child: YandexMap(
            mapObjects: [
              PlacemarkMapObject(
                  mapId: const MapObjectId('0'),
                  point: point,
                  icon: PlacemarkIcon.single(
                    PlacemarkIconStyle(
                      image: BitmapDescriptor.fromAssetImage(AppImages.marker),
                      scale: 0.08,
                    ),
                  ))
            ],
            onMapCreated: (YandexMapController controller) {
              controller.moveCamera(
                CameraUpdate.newCameraPosition(
                  const CameraPosition(
                    target: point,
                    zoom: 10,
                  ),
                ),
              );
            },
            gestureRecognizers: {
              Factory<OneSequenceGestureRecognizer>(
                  () => EagerGestureRecognizer())
            },
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          AppStrings.address,
          style: textTheme.bodyMedium,
        ),
        SizedBox(height: 4.h),
        TextButton(
          onPressed: goToGoogle,
          child: Text(
            AppStrings.goToWebsite,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  void goToGoogle() {
    final Uri uri = Uri.parse(AppLinks.google);
    launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }
}
