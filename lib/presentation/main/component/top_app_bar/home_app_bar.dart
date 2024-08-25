import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_app_bar.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../cubit/mall_type_cubit.dart';
import '../widgets/svg_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(builder: (_, state) {
      return AnimatedContainer(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        color: state.theme.backgroundColor,
        child: AppBar(
          leading: SvgIconButton(
            icon: AppIcons.mainLogo,
            color: state.theme.logoColor,
            padding: 8,
          ),
          title: AnimatedContainer(
            decoration: BoxDecoration(
              color: state.theme.containerColor,
              borderRadius: BorderRadius.all(Radius.circular(
                CustomAppBarTheme.tabBarRadius,
              )),
            ),
            child: SizedBox(
              height: 28,
              child: DefaultTabController(
                length: MallType.values.length,
                initialIndex: state.index,
                child: TabBar(
                  tabs: List.generate(
                    MallType.values.length,
                    (index) => Tab(text: MallType.values[index].toName),
                  ),
                  // isScrollable: true,
                  indicator: BoxDecoration(
                    color: state.theme.indicatorColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                      CustomAppBarTheme.tabBarRadius,
                    )),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  labelColor: state.theme.labelColor,
                  labelStyle: Theme.of(context).textTheme.labelLarge.bold,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 12),
                  unselectedLabelColor: state.theme.unselectedLabelColor,
                  unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
                  onTap: (index) =>
                      context.read<MallTypeCubit>().changeMallType(index),
                  splashBorderRadius: BorderRadius.all(Radius.circular(
                    CustomAppBarTheme.tabBarRadius,
                  )),
                ),
              ),
            ),
            duration:
                Duration(milliseconds: CustomAppBarTheme.animationDuration),
          ),
          actions: [
            SvgIconButton(
              icon: AppIcons.location,
              color: state.theme.iconColor,
            ),
            SvgIconButton(
              icon: AppIcons.cart,
              color: state.theme.iconColor,
            ),
          ],
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leadingWidth: 86,
          systemOverlayStyle: state.theme.systemUiOverlayStyle,
        ),
        duration: Duration(milliseconds: CustomAppBarTheme.animationDuration),
      );
    });
  }
}
