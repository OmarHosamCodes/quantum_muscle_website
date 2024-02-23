import 'package:quantum_muscle_website/library.dart';

class Routing extends StatelessWidget {
  const Routing({required this.child, required this.state, super.key});

  final Widget child;
  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: ColorConstants.primaryColor,
            width: width * 0.1,
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                  child: VerticalDivider(
                    color: ColorConstants.accentColor,
                  ),
                ),
                QmButton.icon(
                  icon: EvaIcons.homeOutline,
                  onPressed: RoutingRepository.goHome,
                ),
                QmButton.icon(
                  icon: EvaIcons.infoOutline,
                  onPressed: RoutingRepository.goAbout,
                ),
                QmButton.icon(
                  icon: EvaIcons.emailOutline,
                  onPressed: RoutingRepository.goContact,
                ),
                const Expanded(
                  child: VerticalDivider(
                    color: ColorConstants.accentColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
