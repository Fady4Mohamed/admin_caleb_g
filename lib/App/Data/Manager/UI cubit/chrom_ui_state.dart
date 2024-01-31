part of 'chrom_ui_cubit.dart';

@immutable
sealed class ChromUiState {}

final class ChromUiOrderview extends ChromUiState {}
final class ChromUiAdd extends ChromUiState {}
final class ChromUiEdit extends ChromUiState {}
final class ChromUiDelet extends ChromUiState {}