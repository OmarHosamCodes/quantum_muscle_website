import 'package:quantum_muscle_website/library.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              //? Who created this app

              const QmSeparator.textOnLeft('Who created this app?')
                  .animate()
                  .fade(
                    duration: HomeConstants.mainDuration,
                    curve: Curves.easeInOutCubic,
                  ),
              const QmText(
                text:
                    '''This app was created by a team of developers who are passionate about fitness and quantum computing. We believe that the future of fitness is quantum computing and we are here to make that future a reality.''',
              ).animate().fade(
                    delay: HomeConstants.mainDuration,
                    duration: HomeConstants.mainDuration,
                    curve: Curves.easeInOutCubic,
                  ),
              QmGap.vMedium(),
              //? Goals

              const QmSeparator.textOnRight('Goals').animate().fade(
                    delay: HomeConstants.mainDuration * 2,
                    duration: HomeConstants.mainDuration,
                    curve: Curves.easeInOutCubic,
                  ),
              const QmText(
                text:
                    '''Our mission is to enhance accessibility to fitness for all. Our app is designed to assist individuals in achieving their personalized fitness goals. Additionally, we're dedicated to fostering a vibrant community of fitness enthusiasts, enabling them to share experiences and provide mutual motivation.''',
              ).animate().fade(
                    delay: HomeConstants.mainDuration * 3,
                    duration: HomeConstants.mainDuration,
                    curve: Curves.easeInOutCubic,
                  ),

              //? Roadmap

              const QmSeparator.textOnLeft('Roadmap').animate().fade(
                    delay: HomeConstants.mainDuration * 4,
                    duration: HomeConstants.mainDuration,
                    curve: Curves.easeInOutCubic,
                  ),
              const QmText(
                text:
                    '''We are currently working on building the first version of the app. We plan to launch the app in the next few months and we are excited to see how it will help people achieve their fitness goals.''',
              ).animate().fade(
                    delay: HomeConstants.mainDuration * 5,
                    duration: HomeConstants.mainDuration,
                    curve: Curves.easeInOutCubic,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
