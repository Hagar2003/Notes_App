part of 'note_cubit_dart_cubit.dart';

@immutable
sealed class NoteCubitDartState {}

final class NoteCubitDartInitial extends NoteCubitDartState {}

class NoteLoading extends NoteCubitDartState {}

class NoteSuccess extends NoteCubitDartState {}

class NoteFailure extends NoteCubitDartState {
  final String errorMessage;

  NoteFailure({required this.errorMessage});
}
