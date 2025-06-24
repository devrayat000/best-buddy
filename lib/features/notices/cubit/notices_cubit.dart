import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/notice_model.dart';
import '../data/notices_firebase_service.dart';

part 'notices_cubit.freezed.dart';

@freezed
class NoticesState with _$NoticesState {
  const factory NoticesState.initial() = _Initial;
  const factory NoticesState.loading() = _Loading;
  const factory NoticesState.loaded(List<NoticeModel> notices) = _Loaded;
  const factory NoticesState.error(String message) = _Error;
}

class NoticesCubit extends Cubit<NoticesState> {
  final NoticesFirebaseService _noticesService;

  NoticesCubit(this._noticesService) : super(const NoticesState.initial());

  void loadNotices() {
    emit(const NoticesState.loading());
    _noticesService.getNotices().listen(
      (notices) {
        emit(NoticesState.loaded(notices));
      },
      onError: (error) {
        emit(NoticesState.error(error.toString()));
      },
    );
  }

  Future<void> createNotice(CreateNoticeModel notice) async {
    try {
      await _noticesService.createNotice(notice);
      // The stream will automatically update the UI
    } catch (e) {
      emit(NoticesState.error(e.toString()));
    }
  }

  Future<void> updateNotice(String id, UpdateNoticeModel notice) async {
    try {
      await _noticesService.updateNotice(id, notice);
      // The stream will automatically update the UI
    } catch (e) {
      emit(NoticesState.error(e.toString()));
    }
  }

  Future<void> deleteNotice(String id) async {
    try {
      await _noticesService.deleteNotice(id);
      // The stream will automatically update the UI
    } catch (e) {
      emit(NoticesState.error(e.toString()));
    }
  }

  Future<bool> isCurrentUserAdmin() async {
    return await _noticesService.isCurrentUserAdmin();
  }
}
