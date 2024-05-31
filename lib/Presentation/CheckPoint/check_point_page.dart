import 'dart:developer';

import 'package:drink/Presentation/DataCollection/data_collection_page.dart';
import 'package:drink/Presentation/HomePage/home_page.dart';
import 'package:drink/application/CheckPoint/bloc/lookup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckPointPage extends StatefulWidget {
  const CheckPointPage({super.key});

  @override
  State<CheckPointPage> createState() => _CheckPointPageState();
}

class _CheckPointPageState extends State<CheckPointPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<LookupBloc>(context).add(StartLookUp());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<LookupBloc, LookupState>(
      builder: (context, state) {
        log('Function is called');
        log(state.toString());
        if (state is LookedUp) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }
        if (state is LookupInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is LookForDetails) {
          return const DataCollectionPage();
        } else {
          return const Center(
            child: Text('Error'),
          );
        }
      },
    ));
  }
}
