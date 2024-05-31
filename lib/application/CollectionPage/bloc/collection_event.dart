part of 'collection_bloc.dart';

abstract class CollectionEvent extends Equatable {
  const CollectionEvent();

  @override
  List<Object> get props => [];
}

class TextDataSubmitEvent extends CollectionEvent {
  final TextDataEntity textDataEntity;

  TextDataSubmitEvent({
    required this.textDataEntity,
  });

  @override
  List<Object> get props => [textDataEntity];
}

class WakeUpTimeSubmitEvent extends CollectionEvent {
  final TimeDataEntity timeDataEntity;
  WakeUpTimeSubmitEvent({required this.timeDataEntity});
  @override
  List<Object> get props => [timeDataEntity];
}

class SleepTimeSubmitEvent extends CollectionEvent {
  final TimeDataEntity timeDataEntity;
  SleepTimeSubmitEvent({required this.timeDataEntity});
  @override
  List<Object> get props => [timeDataEntity];
}

class CollectionCompleteEvent extends CollectionEvent {}

class SelectAvatarEvent extends CollectionEvent {
  final int index;
  final String avatarPath;
  SelectAvatarEvent({required this.avatarPath, required this.index});
  @override
  List<Object> get props => [avatarPath, index];
}
