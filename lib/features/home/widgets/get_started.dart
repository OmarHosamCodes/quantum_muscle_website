import 'package:quantum_muscle_website/library.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const QmSeparator.textOnRight('Get Started').animate().fade(
              delay: HomeConstants.mainDuration * 3,
              duration: HomeConstants.mainDuration,
              curve: Curves.easeInOutCubic,
            ),
        QmGap.vMedium(),
        const Padding(
          padding: EdgeInsets.all(8),
          child: QmText(
            text:
                """Quantum Muscle is a fitness app that uses quantum computing 'Wink Wink' to generate the most efficient workout plan for you.""",
            isHeadline: true,
          ),
        ).animate().fade(
              delay: HomeConstants.mainDuration * 4,
              duration: HomeConstants.mainDuration,
              curve: Curves.easeInOutCubic,
            ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            width: width,
            height: height * 0.5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: width * 0.5,
                  child: const Placeholder(
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  ),
                ).animate().fade(
                      delay: HomeConstants.mainDuration * 5,
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
                Positioned(
                  top: height * 0.1,
                  right: 50,
                  left: 50,
                  bottom: height * 0.1,
                  child: const Placeholder(
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  ),
                ).animate().fade(
                      delay: HomeConstants.mainDuration * 6,
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: width * 0.5,
                  child: const Placeholder(
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  ),
                ).animate().fade(
                      delay: HomeConstants.mainDuration * 7,
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
