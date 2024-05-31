import 'package:drink/Presentation/HomePage/core/state_box_variables.dart';
import 'package:drink/Presentation/HomePage/widgets/app_bar.dart';
import 'package:drink/Presentation/HomePage/widgets/percentage_indicator.dart';
import 'package:drink/Presentation/HomePage/widgets/stat_widget.dart';
import 'package:drink/Presentation/core/TextStyle/text_styles.dart';
import 'package:drink/domain/Entities/StatEntity/stat_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).colorScheme.primary,
      ),
    );
    return Scaffold(
      appBar: const CusAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PercentageIndicaror(),
          Padding(
            padding: EdgeInsets.only(top: 63.h),
            child: Center(
              child: Text(
                'Your Stats',
                style: materialthemeheadlinesmall(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 55.w, top: 21.h, right: 55.w),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 50.h,
                  crossAxisSpacing: 50.w,
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  Statentity stats = stat[index];
                  Color containerColor = getContainerColors(context)[index];
                  Color textColor = getTextColors(context)[index];
                  return StatBox(
                    title: stats.title,
                    value: stats.value,
                    containerColor: containerColor,
                    textColor: textColor,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
