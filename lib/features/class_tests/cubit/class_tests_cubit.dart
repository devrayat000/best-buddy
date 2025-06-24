import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/class_test_model.dart';
import '../data/class_tests_firebase_service.dart';

part 'class_tests_cubit.freezed.dart';

@freezed
class ClassTestsState with _$ClassTestsState {
  const factory ClassTestsState.initial() = _Initial;
  const factory ClassTestsState.loading() = _Loading;
  const factory ClassTestsState.loaded(List<ClassTestModel> classTests) = _Loaded;
  const factory ClassTestsState.error(String message) = _Error;
}

class ClassTestsCubit extends Cubit<ClassTestsState> {
  final ClassTestsFirebaseService _classTestsService;

  ClassTestsCubit(this._classTestsService) : super(const ClassTestsState.initial());

  void loadClassTests() {
    emit(const ClassTestsState.loading());
    _classTestsService.getClassTests().listen(
      (classTests) {
        emit(ClassTestsState.loaded(classTests));
      },
      onError: (error) {
        emit(ClassTestsState.error(error.toString()));
      },
    );
  }

  void loadUpcomingClassTests() {
    emit(const ClassTestsState.loading());
    _classTestsService.getUpcomingClassTests().listen(
      (classTests) {
        emit(ClassTestsState.loaded(classTests));
      },
      onError: (error) {
        emit(ClassTestsState.error(error.toString()));
      },
    );
  }

  void loadClassTestsBySubject(String subject) {
    emit(const ClassTestsState.loading());
    _classTestsService.getClassTestsBySubject(subject).listen(
      (classTests) {
        emit(ClassTestsState.loaded(classTests));
      },
      onError: (error) {
        emit(ClassTestsState.error(error.toString()));
      },
    );
  }

  Future<void> createClassTest(CreateClassTestModel classTest) async {
    try {
      await _classTestsService.createClassTest(classTest);
      // The stream will automatically update the UI
    } catch (e) {
      emit(ClassTestsState.error(e.toString()));
    }
  }

  Future<void> updateClassTest(String id, UpdateClassTestModel classTest) async {
    try {
      await _classTestsService.updateClassTest(id, classTest);
      // The stream will automatically update the UI
    } catch (e) {
      emit(ClassTestsState.error(e.toString()));
    }
  }

  Future<void> deleteClassTest(String id) async {
    try {
      await _classTestsService.deleteClassTest(id);
      // The stream will automatically update the UI
    } catch (e) {
      emit(ClassTestsState.error(e.toString()));
    }
  }

  Future<bool> isCurrentUserAdmin() async {
    return await _classTestsService.isCurrentUserAdmin();
  }

  Future<List<String>> getSubjects() async {
    return await _classTestsService.getSubjects();
  }
}
