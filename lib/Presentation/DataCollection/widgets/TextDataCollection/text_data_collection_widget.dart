import 'package:drink/Presentation/DataCollection/widgets/TextDataCollection/core/controllers.dart';
import 'package:drink/Presentation/core/TextStyle/text_styles.dart';
import 'package:drink/Presentation/core/colors/colors.dart';
import 'package:drink/application/CollectionPage/bloc/collection_bloc.dart';
import 'package:drink/domain/Entities/UserDetailsEntities/userdetails_entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextDataCollection extends StatelessWidget {
  TextDataCollection({
    super.key,
  });

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 178.h, bottom: 48.h),
                child: Text(
                  'Tell Us More About You.',
                  style: materialthemeheadlinesmall(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 75.w),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Plese Enter Your Name';
                    }
                    return null;
                  },
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75.w),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plese Enter Your Name';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75.w),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value != "M" && value != "F") {
                        return 'Plese Enter Either M or F';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Gender (M or F)",
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75.w),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          RegExp(r'[a-zA-Z]').hasMatch(value)) {
                        return 'Plese Enter Your Weight';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Weight',
                    ),
                  )),
              SizedBox(height: 48.h),
              FilledButton(
                style: ButtonStyle(backgroundColor: filledButtonColor),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    BlocProvider.of<CollectionBloc>(context)
                        .add(TextDataSubmitEvent(
                            textDataEntity: TextDataEntity(
                      firstName: 'firstName',
                      lastName: 'lastName',
                      gender: 'gender',
                      weight: '20',
                    )));
                  }
                },
                child: const Text('Conform'),
              ),
              SizedBox(
                height: 89.h,
              ),
              Text(
                "All the information provided will only be\n used for calculating your need of water",
                style: materialthemeverysmall(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
