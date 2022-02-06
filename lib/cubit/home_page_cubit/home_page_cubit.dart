
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  static HomePageCubit get(BuildContext context) => BlocProvider.of(context);
  HomePageCubit() : super(HomePageInitialState());
  bool? _contactUsPressed = false;

  bool get contactUsPressed => _contactUsPressed!;
  set pressOnContactUs(bool value) {
    emit(DrawerLoadingState());
    _contactUsPressed = value;
    emit(DrawerLoadedState());
  }

}
