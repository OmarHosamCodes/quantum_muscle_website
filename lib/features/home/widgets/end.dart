import 'package:quantum_muscle_website/library.dart';

class End extends StatelessWidget {
  const End({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const QmSeparator.textOnMiddle('End').animate().fade(
          delay: HomeConstants.mainDuration * 11,
          duration: HomeConstants.mainDuration,
          curve: Curves.easeInOutCubic,
        );
  }
}
