import 'package:rick_and_morty/common/theme/bloc/theme_cubit.dart';
import 'package:rick_and_morty/utils/presentation_exports.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      activeIcon: Assets.svgs.rickNight.svg(),
      activeColor: Colors.transparent,
      inactiveColor: Colors.transparent,
      inactiveIcon: Assets.svgs.rickLight.svg(),
      //inactiveSwitchBorder: Border.all(width: 1, color: Colors.black),
      //activeSwitchBorder: Border.all(width: 1, color: Colors.black),
      activeToggleColor: Colors.transparent,
      inactiveToggleColor: Colors.transparent,
      toggleSize: 32,
      width: 65,
      height: 35,
      borderRadius: 30.0,
      showOnOff: false,
      value: context.read<ThemeCubit>().state.theme == AppTheme.dark,
      onToggle: (val) {
        context.read<ThemeCubit>().switchTheme();
      },
    );
  }
}
