import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veseeta/core/config/config.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void changeLanguage(String lang) {
    emit(HomeLoading());
    Config.loadLanguage(lang).then((value) {
      emit(HomeLoaded());
    });
  }
}
