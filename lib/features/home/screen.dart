import 'package:quantum_muscle_website/library.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DownloadOrGo(),
            QmGap.vMedium(),
            const GetStarted(),
            QmGap.vMedium(),
            const Features(),
            QmGap.vMedium(),
            const End(),
          ],
        ),
      ),
    );
  }
}
