import 'package:drink/Presentation/core/TextStyle/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CusAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
        preferredSize: Size(360.w, 136.h),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.r),
              bottomRight: Radius.circular(50.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 33.w, top: 43.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: materialthemeheadlinelarge(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 32.w),
                      child: Text(
                        'Anestatia',
                        style: materialthemeheadlinemedium(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 97.w, top: 46.h),
                child: Container(
                  width: 66.w,
                  height: 66.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/avatar/avatar_1.png",
                      width: 57.75.w,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(360.w, 136.h);
}
