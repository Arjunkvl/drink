import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'lookup_event.dart';
part 'lookup_state.dart';

class LookupBloc extends Bloc<LookupEvent, LookupState> {
  bool looked = false;
  LookupBloc() : super(LookupInitial()) {
    on<StartLookUp>((event, emit) async {
      if (looked) {
        await Future.delayed(const Duration(seconds: 5));
        log('Event received');
        emit(const LookedUp(key: 1));
      } else {
        emit(LookForDetails());
      }
    });
  }
}
