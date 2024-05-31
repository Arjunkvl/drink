import 'package:drink/Presentation/core/TextStyle/text_styles.dart';
import 'package:drink/Presentation/core/colors/colors.dart';
import 'package:drink/application/CollectionPage/bloc/collection_bloc.dart';
import 'package:drink/domain/Entities/UserDetailsEntities/userdetails_entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WakeupTimeDataCollectionWidget extends StatelessWidget {
  const WakeupTimeDataCollectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 204.h),
          child: Image.asset(
            'assets/images/Utility/001-sahur.png',
            width: 200.w,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          'Pick your Wake up Time',
          style: materialthemeheadlinesmall(),
        ),
        SizedBox(
          height: 78.h,
        ),
        FilledButton(
          style: ButtonStyle(backgroundColor: filledButtonColor),
          onPressed: () async {
            TimeOfDay? pickedTime = await showTimePicker(
                context: context, initialTime: TimeOfDay.now());
            if (!context.mounted) return;
            if (pickedTime != null) {
              BlocProvider.of<CollectionBloc>(context).add(
                WakeUpTimeSubmitEvent(
                  timeDataEntity: TimeDataEntity(pickedTime: pickedTime),
                ),
              );
            }
          },
          child: const Text('Go Pick'),
        ),
        SizedBox(
          height: 126.h,
        ),
        Text(
          "These time will be used to calculate your awake time.",
          style: materialthemeverysmall(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
