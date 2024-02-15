part of 'add_cubit.dart';

@immutable
sealed class AddState {}

final class AddInitial extends AddState {}
final class AddSuccess extends AddState {}
final class AddLoding extends AddState {}
final class AddFailure extends AddState {
  final String error;

  AddFailure({required this.error});

}