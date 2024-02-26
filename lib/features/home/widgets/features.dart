import 'package:quantum_muscle_website/library.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const QmSeparator.textOnLeft('Features').animate().fade(
              delay: HomeConstants.mainDuration * 8,
              duration: HomeConstants.mainDuration,
              curve: Curves.easeInOutCubic,
            ),

        QmGap.vMedium(),

        //? Features
        for (var i = 0; i < 3; i++)
          Padding(
            padding: const EdgeInsets.all(8),
            child: Showcase(
              child1: const Placeholder(
                fallbackHeight: 150,
                fallbackWidth: 150,
              ),
              child2: Column(
                children: [
                  QmText(
                    text: 'Feature $i',
                    isHeadline: true,
                  ),
                  QmGap.vMedium(),
                  const QmText(
                    text:
                        '''This is a feature that is so cool that you will not believe it.''',
                  ),
                ],
              ),
            ),
          ).animate().fade(
                delay: HomeConstants.mainDuration * (9 + i),
                duration: HomeConstants.mainDuration,
                curve: Curves.easeInOutCubic,
              ),
      ],
    );
  }
}
