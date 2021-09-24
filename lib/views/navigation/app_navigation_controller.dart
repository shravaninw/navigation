import 'package:flutter/material.dart';
import 'package:fluttertestapp/core/navigation/navigation.dart';
import 'package:fluttertestapp/ui.dart';
import 'package:fluttertestapp/views/home_page.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_state.dart';
import 'package:fluttertestapp/views/usecase1/modal_m.dart';
import 'package:fluttertestapp/views/usecase1/screen_a.dart';
import 'package:fluttertestapp/views/usecase1/screen_d.dart';
import 'package:fluttertestapp/views/usecase1/screen_n.dart';
import 'package:fluttertestapp/views/usecase2/screenda.dart';
import 'package:fluttertestapp/views/usecase2/usecase2_screen.dart';
import 'package:fluttertestapp/views/usecase3/lock.dart';
import 'package:fluttertestapp/views/usecase3/usecase3_screen.dart';
import 'package:fluttertestapp/views/usecase4/usecase4screen.dart';
import 'package:fluttertestapp/views/usecase5/delay_screen2.dart';
import 'package:fluttertestapp/views/usecase5/usecase5_screen.dart';
import 'package:fluttertestapp/views/usecase6/screen6.dart';
import 'package:fluttertestapp/views/usecase6/usecase6_screen.dart';

import '../usecase1/screen_b.dart';
import '../usecase1/screen_c.dart';

class AppNavigationController extends AppFlowController<AppNavigationState> {
  AppNavigationController() : super(AppNavigationState());

  // ignore: unused_element
  //void _setState(AppNavigationState state) => this.state = state;

//
//  void updateUserName() {
//    state = state.rebuild((AppNavigationStateBuilder b) => b.value = null);
//  }
//
//  void submit() {
//    state = state.rebuild((AppNavigationStateBuilder b) => b.value = 'Updated');
//  }
  set state(AppNavigationState state) {
    print('''
    OldState: ${this.state}
    NewState: $state''');
    super.state = state;
  }

  void gotoScreenA() {
    state = state.rebuild((b) => b..useCase = Usecase.usecase1);
    state = state.rebuild((b) => b..screens1 = UseCase1Screens.screenA);
  }

  void gotoScreenUsecase2() {
    state = state.rebuild((b) => b..useCase = Usecase.usecase2);
    state = state.rebuild((b) => b..screens2 = UseCase2Screens.usecasescreen2);
  }

  void gotoScreenUsecase3() {
    state = state.rebuild((b) => b..useCase = Usecase.usecase3);
    state = state.rebuild((b) => b..screens3 = UseCase3Screens.usecasescreen3);
  }

  void gotoScreenUsecase4() {
    state = state.rebuild((b) => b..useCase = Usecase.usecase4);
    state = state.rebuild((b) => b..screens4 = UseCase4Screens.usecasescreen4);
  }

  void gotoScreenUsecase5() {
    state = state.rebuild((b) => b..useCase = Usecase.usecase5);
    state = state.rebuild((b) => b..screens5 = UseCase5Screens.usercasescreen5);
  }

  void gotoScreenUsecase6() {
    state = state.rebuild((b) => b..useCase = Usecase.usecase6);
    state = state.rebuild((b) => b..screens6 = UseCase6Screens.usercasescreen6);
  }

  void gotoScreenB() {
    state = state.rebuild((b) => b..screens1 = UseCase1Screens.screenB);
  }

  void gotoScreenC() {
    state = state.rebuild((b) => b..screens1 = UseCase1Screens.screenC);
  }

  void gotoScreenD() {
    state = state.rebuild((b) => b..screens1 = UseCase1Screens.screenD);
  }

  void gotoModalM() {
    state = state.rebuild((b) => b..screens1 = UseCase1Screens.modalM);
  }

  void gotoScreenN() {
    state = state.rebuild((b) => b..screens1 = UseCase1Screens.screenN);
  }

  void lock() {
    state = state.rebuild((b) => b..screens3 = UseCase3Screens.lock);
  }

  void gotoScreen6() {
    state = state.rebuild((b) => b..screens6 = UseCase6Screens.screen6);
  }

  void gotoScreenDA() {
    state = state.rebuild((b) => b..screens2 = UseCase2Screens.screend);
  }

  void delayScreen2() {
    state = state.rebuild((b) => b..screens5 = UseCase5Screens.delayscreen);
  }

  @override
  List<Page<Object>> onGeneratePages(
    AppNavigationState state,
    List<Page<Object>> currentPages,
  ) {
    final _pages = <Page<Object>>[
      const MaterialPage<Object>(child: HomePage()),
      if (state.useCase == Usecase.usecase1)
        ..._useCase1Flow(state)
      //
      //
      //
      //
      else if (state.useCase == Usecase.usecase2) ...[
        MaterialPage(
          child: Usecase2Screen(),
        ),
        if (state.screens2 == UseCase2Screens.screend)
          MaterialPage(child: ScreenDA()),
      ]

      //
      //
      //
      else if (state.useCase == Usecase.usecase3) ...[
        MaterialPage(child: Usecase3Screen()),
        if (state.screens3 == UseCase3Screens.lock) MaterialPage(child: Lock())
      ]
      //
      //
      //
      else if (state.useCase == Usecase.usecase4)
        MaterialPage(child: Usecase4Screen())
      //
      //
      //
      else if (state.useCase == Usecase.usecase5) ...[
        MaterialPage(child: Usecase5Screen()),
        if (state.screens5 == UseCase5Screens.delayscreen)
          MaterialPage(child: DelayScreen2())
      ]
      //
      //
      //
      else if (state.useCase == Usecase.usecase6)
        MaterialPage(child: Usecase6Screen()),
      ...[
        if (state.screens6 == UseCase6Screens.screen6)
          MaterialPage(child: Screen6())
      ]
    ];

    print(_pages.map((e) => (e as MaterialPage).child.runtimeType));

    return _pages;
  }

  List<Page<Object>> _useCase1Flow(AppNavigationState state) {
    return [
      MaterialPage(child: ScreenA()),
      ...[
        if ({
          UseCase1Screens.screenB,
          UseCase1Screens.screenC,
          UseCase1Screens.modalM,
          UseCase1Screens.screenN
        }.contains(state.screens1))
          MaterialPage(child: ScreenB()),
        if ({
          UseCase1Screens.screenC,
          UseCase1Screens.modalM,
          UseCase1Screens.screenN
        }.contains(state.screens1))
          MaterialPage(child: ScreenC()),
        if ({UseCase1Screens.modalM, UseCase1Screens.screenN}
            .contains(state.screens1))
          MaterialPage(child: ModalM()),
        if ({UseCase1Screens.screenN}.contains(state.screens1))
          MaterialPage(child: ScreenN()),
        if (UseCase1Screens.screenD == state.screens1)
          MaterialPage(child: ScreenD())
      ]
    ];
  }
}

enum UseCase1Screens {
  screenA,
  screenB,
  screenC,
  screenD,
  modalM,
  screenN,
}
enum UseCase2Screens {
  usecasescreen2,
  screend,
}
enum UseCase3Screens { usecasescreen3, lock }
enum UseCase4Screens { usecasescreen4 }
enum UseCase5Screens { usercasescreen5, delayscreen }
enum UseCase6Screens { usercasescreen6, screen6 }
enum Usecase {
  usecase1,
  usecase2,
  usecase3,
  usecase4,
  usecase5,
  usecase6,
}
