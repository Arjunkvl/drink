part of 'collection_bloc.dart';

abstract class CollectionState extends Equatable {
  final int pageIndex;
  const CollectionState({this.pageIndex = 0});

  @override
  List<Object> get props => [];
}

class TextDataCollectionState extends CollectionState {
  TextDataCollectionState({required super.pageIndex});
  @override
  List<Object> get props => [pageIndex];
}

class WakeUpTimeDataCollectionState extends CollectionState {
  WakeUpTimeDataCollectionState({required super.pageIndex});
  @override
  List<Object> get props => [pageIndex];
}

class SleepTimeDataCollectionState extends CollectionState {
  SleepTimeDataCollectionState({required super.pageIndex});
  @override
  List<Object> get props => [pageIndex];
}

class AvatarCollectionState extends CollectionState {
  AvatarCollectionState({required super.pageIndex});
}

class CollectionCompletedState extends CollectionState {
  CollectionCompletedState();
}

class UpdateAvatarGrid extends CollectionState {
  final int index;
  UpdateAvatarGrid({required this.index});
  @override
  List<Object> get props => [index];
}
