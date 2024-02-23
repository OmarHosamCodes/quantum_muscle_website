import 'package:quantum_muscle_website/library.dart';

class Showcase extends StatelessWidget {
  const Showcase({required this.child1, required this.child2, super.key});

  final Widget child1;
  final Widget child2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: child1,
              ),
              Flexible(
                child: child2,
              ),
            ],
          );
        } else {
          return Column(
            children: [
              child1,
              child2,
            ],
          );
        }
      },
    );
  }
}
