part of 'add_cubit.dart';

@immutable
sealed class AddState {}

final class AddInitial extends AddState {}
final class AddSuccess extends AddState {}
final class AddLoding extends AddState {}
final class AddFailer extends AddState {
  final String error;

  AddFailer({required this.error});

}