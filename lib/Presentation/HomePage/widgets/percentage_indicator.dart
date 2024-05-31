import 'package:drink/Presentation/core/TextStyle/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentageIndicaror extends StatelessWidget {
  const PercentageIndicaror({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 35.w, top: 44.h),
          child: CircularPercentIndicator(
            radius: 50.r,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.6,
            reverse: true,
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.transparent,
            progressColor: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w, top: 61.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'You are ',
                      style: materialthemebodylarge(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    TextSpan(
                      text: '60%',
                      style: materialthemedisplaymedium(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 118.w),
                child: Text(
                  'Hydrated',
                  style: materialthemebodylarge(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
