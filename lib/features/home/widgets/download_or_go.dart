import 'package:quantum_muscle_website/library.dart';

class DownloadOrGo extends StatelessWidget {
  const DownloadOrGo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Image.asset(
            'assets/icon/icon.png',
            height: 200,
            width: 200,
          ).animate().fade(
                duration: HomeConstants.mainDuration,
                curve: Curves.easeInOutCubic,
              ),
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: double.infinity,
                child: QmButton.mixed(
                  icon: EvaIcons.monitorOutline,
                  text: 'Web App',
                  onPressed: () {},
                ),
              ).animate().fade(
                    delay: HomeConstants.mainDuration,
                    duration: HomeConstants.mainDuration,
                    curve: Curves.easeInOutCubic,
                  ),
              QmGap.vMedium(),
              SizedBox(
                width: double.infinity,
                child: QmButton.mixed(
                  icon: EvaIcons.smartphoneOutline,
                  text: 'Android App',
                  onPressed: () {},
                ).animate().fade(
                      delay: HomeConstants.mainDuration * 2,
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
