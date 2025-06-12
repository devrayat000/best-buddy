import 'package:flutter_bloc/flutter_bloc.dart';

enum ReloadEvent { notices, classTests }

class ReloadCubit extends Cubit<ReloadEvent?> {
  ReloadCubit() : super(null);

  void reloadNotices() {
    emit(ReloadEvent.notices);
    emit(null); // Reset state
  }

  void reloadClassTests() {
    emit(ReloadEvent.classTests);
    emit(null); // Reset state
  }
}
