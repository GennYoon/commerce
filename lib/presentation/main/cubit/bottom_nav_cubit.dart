import "package:flutter_bloc/flutter_bloc.dart";

import "../../../core/theme/constant/app_icons.dart";

enum BottomNav { home, category, search, user }

class BottomNavCubit extends Cubit<BottomNav> {
  BottomNavCubit() : super(BottomNav.home);

  void changeIndex(int index) {
    switch (index) {
      case 0:
        emit(BottomNav.home);
        break;
      case 1:
        emit(BottomNav.category);
        break;
      case 2:
        emit(BottomNav.search);
        break;
      case 3:
        emit(BottomNav.user);
        break;
    }
  }
}

extension BottomNavX on BottomNav {
  String get icon {
    switch (this) {
      case BottomNav.home:
        return AppIcons.navHome;
      case BottomNav.category:
        return AppIcons.navCategory;
      case BottomNav.search:
        return AppIcons.navSearch;
      case BottomNav.user:
        return AppIcons.navUser;
    }
  }

  String get activeIcon {
    switch (this) {
      case BottomNav.home:
        return AppIcons.navHomeOn;
      case BottomNav.category:
        return AppIcons.navCategoryOn;
      case BottomNav.search:
        return AppIcons.navSearchOn;
      case BottomNav.user:
        return AppIcons.navUserOn;
    }
  }

  String get toName {
    switch (this) {
      case BottomNav.home:
        return "home";
      case BottomNav.category:
        return "category";
      case BottomNav.search:
        return "search";
      case BottomNav.user:
        return "user";
    }
  }
}
