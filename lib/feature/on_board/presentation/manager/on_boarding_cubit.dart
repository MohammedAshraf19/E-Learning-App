import 'package:bloc/bloc.dart';
import 'package:e_learning/feature/on_board/presentation/manager/on_boarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/colors.dart';
import '../../data/model/onboarding_model.dart';


class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  static OnBoardingCubit get(context) => BlocProvider.of(context);

  PageController pageController = PageController();
  bool isLast = false;
  int page = 0;
  List<Color> onBoardingPageColor = [
    MyColor.kBackGroundColorBlack,
    MyColor.kColorWhite,
    MyColor.kPrimaryColor
  ];
  List<OnboardingModel> onboards = [
    OnboardingModel(
      image: AssetsData.onboard1,
      desc: 'Online Study is the\nBest choice for\neveryone.',
      txtColor: MyColor.kColorWhite,
    ),
    OnboardingModel(
      image: AssetsData.onboard3,
      desc: 'Best platform for both\nTeachers & Learners.',
      txtColor: MyColor.kPrimaryColorLight,
    ),
    OnboardingModel(
      image: AssetsData.onboard2,
      desc: 'Anywhere, Accelerate\nYour Future and beyond.',
      txtColor: MyColor.kColorBlackLight,
    ),
  ];

  void onchange(int index){
    if (index == onboards.length - 1) {
      isLast = true;
      emit(LastTrue());
    } else {
      isLast = false;
      emit(LastFalse());
    }
    page = index;
  }
}
