import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/radio_model.dart';
import '../api/api_manager.dart';

class HomePageCubit extends Cubit<HomePageState> {
  late ApiManager apiManager;
  late GetsRadiosRequestBody? radioModel;
  final player = AudioPlayer();
  bool isPlaying = false;
  int curIndex = 0;

  HomePageCubit() : super(HomePageInitial()) {
    apiManager = ApiManager();
    getRadio();
  }

  Future<void> getRadio() async {
    var radios = await apiManager.getRadios();
    radioModel = radios;
    emit(HomePageSuccessState());
  }

  nextRadio() {
    if (curIndex < radioModel!.radios!.length) curIndex++;

    isPlaying = false;
    player.stop();

    emit(HomePageSuccessState());
  }

  previousRadio() {
    if (curIndex > 0) curIndex--;

    player.stop();
    isPlaying = false;

    emit(HomePageSuccessState());
  }

  clickOnPlayButton() {
    if (player.state == PlayerState.playing) {
      player.stop();
      isPlaying = false;
    } else {
      player.play(UrlSource(radioModel!.radios![curIndex].url!));
      isPlaying = true;
    }
    emit(HomePageSuccessState());
  }
}

abstract class HomePageState {}

class HomePageInitial extends HomePageState {}

class HomePageSuccessState extends HomePageState {
  HomePageSuccessState();
}

class HomePageChangeRadioState extends HomePageInitial {}
