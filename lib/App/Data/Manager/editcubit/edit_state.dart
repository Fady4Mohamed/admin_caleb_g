part of 'edit_cubit.dart';

@immutable
sealed class EditState {}

final class EditInitial extends EditState {}
final class Editsuccess extends EditState {}
final class Editfailure extends EditState {
 final String Error;

  Editfailure({required this.Error});
}
final class Editloding extends EditState {}