part of 'home_page_cubit.dart';

abstract class HomePageState extends Equatable {
  @override
  List<Object> get props => [];
}
class HomePageInitialState extends HomePageState {}

class HomePageLoadingState extends HomePageState {}
class HomePageLoadedState extends HomePageState {}
class HomePageErrorState extends HomePageState {}

class DrawerLoadingState extends HomePageState {}
class DrawerLoadedState extends HomePageState {}
class DrawerErrorState extends HomePageState {}
