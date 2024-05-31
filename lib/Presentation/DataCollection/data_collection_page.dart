import 'package:drink/Presentation/DataCollection/widgets/AvatarCollection/avatar_collection_page.dart';
import 'package:drink/Presentation/DataCollection/widgets/TextDataCollection/text_data_collection_widget.dart';
import 'package:drink/Presentation/DataCollection/widgets/TimeDataCollection/sleep_time_data_collection_widget.dart';
import 'package:drink/Presentation/DataCollection/widgets/TimeDataCollection/wakeup_time_data_collection_widget.dart';
import 'package:drink/Presentation/HomePage/home_page.dart';
import 'package:drink/application/CollectionPage/bloc/collection_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataCollectionPage extends StatefulWidget {
  const DataCollectionPage({super.key});

  @override
  State<DataCollectionPage> createState() => _DataCollectionPageState();
}

class _DataCollectionPageState extends State<DataCollectionPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: BlocBuilder<CollectionBloc, CollectionState>(
          builder: (context, state) {
            if (state is! TextDataCollectionState &&
                state is! CollectionCompletedState &&
                state is! UpdateAvatarGrid) {
              _pageController.animateToPage(state.pageIndex,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.bounceIn);
            }
            if (state is CollectionCompletedState) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              });
            }
            return PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                TextDataCollection(),
                const WakeupTimeDataCollectionWidget(),
                const SleepTimeDataCollectionWidget(),
                const AvatarCollection(),
              ],
            );
          },
        ),
      ),
    );
  }
}
