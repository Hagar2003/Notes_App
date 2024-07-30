import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'note_cubit_dart_state.dart';

class NoteCubitDartCubit extends Cubit<NoteCubitDartState> {
  NoteCubitDartCubit() : super(NoteCubitDartInitial());
}
