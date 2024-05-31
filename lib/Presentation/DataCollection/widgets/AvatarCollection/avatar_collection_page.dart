import 'dart:developer';

import 'package:drink/Presentation/core/TextStyle/text_styles.dart';
import 'package:drink/Presentation/core/colors/colors.dart';
import 'package:drink/application/CollectionPage/bloc/collection_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarCollection extends StatelessWidget {
  const AvatarCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 188.h,
        ),
        Text(
          'Pick Your Avatar',
          style: materialthemeheadlinesmall(),
        ),
        SizedBox(
          height: 61.h,
        ),
        Flexible(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(bottom: 53.h, left: 22.w, right: 22.w),
            child: BlocBuilder<CollectionBloc, CollectionState>(
              builder: (context, state) {
                if (state is AvatarCollectionState) {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 14.h,
                        crossAxisSpacing: 12.w,
                        crossAxisCount: 4),
                    itemCount: 12,
                    itemBuilder: (context, index) => Opacity(
                      opacity: 1,
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<CollectionBloc>(context).add(
                            SelectAvatarEvent(
                              avatarPath:
                                  "assets/images/avatar/avatar_${index + 1}.png",
                              index: index,
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/images/avatar/avatar_${index + 1}.png",
                          width: 70.w,
                        ),
                      ),
                    ),
                  );
                } else if (state is UpdateAvatarGrid) {
                  log('called');
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 14.h,
                        crossAxisSpacing: 12.w,
                        crossAxisCount: 4),
                    itemCount: 12,
                    itemBuilder: (context, index) => Opacity(
                      opacity: index == state.index ? 1 : 0.5,
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<CollectionBloc>(context).add(
                            SelectAvatarEvent(
                              avatarPath:
                                  "assets/images/avatar/avatar_${index + 1}.png",
                              index: index,
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/images/avatar/avatar_${index + 1}.png",
                          width: 70.w,
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: FilledButton(
              style: ButtonStyle(backgroundColor: filledButtonColor),
              onPressed: () {
                BlocProvider.of<CollectionBloc>(context)
                    .add(CollectionCompleteEvent());
              },
              child: const Text('Conform')),
        ),
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 111.h),
            child: Text(
              "by clicking conform you are agreeing to our terms of services.",
              style: materialthemeverysmall(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
