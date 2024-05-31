part of 'lookup_bloc.dart';

abstract class LookupState extends Equatable {
  const LookupState();

  @override
  List<Object> get props => [];
}

class LookupInitial extends LookupState {}

class LookedUp extends LookupState {
  const LookedUp({required this.key});
  final int key;
  @override
  List<Object> get props => [key];
}

class LookForDetails extends LookupState {}
