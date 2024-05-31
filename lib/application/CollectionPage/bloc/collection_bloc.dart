import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drink/domain/Entities/UserDetailsEntities/userdetails_entities.dart';
import 'package:drink/domain/Repository/userdetails_repo_impl.dart';
import 'package:drink/domain/Usecases/UserDetailsUseCases/usecases.dart';
import 'package:equatable/equatable.dart';

part 'collection_event.dart';
part 'collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  late TextDataEntity textDataEntity;
  late TimeDataEntity wakeUpTimeDataEntity;
  late TimeDataEntity sleepTimeDataEntity;

  UserdetailsRepoImpl repository = UserdetailsRepoImpl();

  CollectionBloc() : super(TextDataCollectionState(pageIndex: 0)) {
    on<TextDataSubmitEvent>(textDataSubmitEvent);
    on<WakeUpTimeSubmitEvent>(wakeUpTimeSubmitEvent);
    on<SleepTimeSubmitEvent>(sleepTimeSubmitEvent);
    on<CollectionCompleteEvent>(collectionCompleteEvent);
    on<SelectAvatarEvent>(selectAvatarEvent);
  }
  FutureOr<void> textDataSubmitEvent(TextDataSubmitEvent event, emit) {
    textDataEntity = event.textDataEntity;
    emit(WakeUpTimeDataCollectionState(pageIndex: state.pageIndex + 1));
  }

  FutureOr<void> wakeUpTimeSubmitEvent(WakeUpTimeSubmitEvent event, emit) {
    wakeUpTimeDataEntity = event.timeDataEntity;
    emit(SleepTimeDataCollectionState(pageIndex: state.pageIndex + 1));
  }

  FutureOr<void> sleepTimeSubmitEvent(SleepTimeSubmitEvent event, emit) {
    sleepTimeDataEntity = event.timeDataEntity;
    emit(AvatarCollectionState(pageIndex: state.pageIndex + 1));
  }

  FutureOr<void> collectionCompleteEvent(CollectionCompleteEvent event, emit) {
    emit(CollectionCompletedState());
    StoreToDataBase(repository: repository);
  }

  FutureOr<void> selectAvatarEvent(SelectAvatarEvent event, emit) {
    emit(UpdateAvatarGrid(index: event.index));
  }
}
