import 'package:quantum_muscle_website/library.dart';

void main() {
  runApp(const QuantumMuscleWebsite());
}

class QuantumMuscleWebsite extends StatelessWidget {
  const QuantumMuscleWebsite({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quantum Muscle Website',
      theme: ThemeController.theme,
      home: const Home(),
    );
  }
}
