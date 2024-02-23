import 'package:quantum_muscle_website/library.dart';

void main() {
  runApp(const QuantumMuscleWebsite());
}

class QuantumMuscleWebsite extends StatelessWidget {
  const QuantumMuscleWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Quantum Muscle Website',
      theme: ThemeController.theme,
      routerConfig: RoutingRepository.router,
    );
  }
}
