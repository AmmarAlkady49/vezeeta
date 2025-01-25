import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restart_app/restart_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:veseeta/core/config/config.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void changeLanguage(String lang) async {
    emit(HomeLoading());
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('lang', lang);
    Config.loadLanguage(lang).then((value) {
      emit(HomeLoaded());
    });
    Restart.restartApp();
  }
}
