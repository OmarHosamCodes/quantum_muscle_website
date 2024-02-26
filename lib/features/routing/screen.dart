import 'package:quantum_muscle_website/library.dart';

class Routing extends StatelessWidget {
  const Routing({required this.child, required this.state, super.key});

  final Widget child;
  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AnimatedSideBar(width: width),
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
      ),
    );
  }
}

class AnimatedSideBar extends StatefulWidget {
  const AnimatedSideBar({
    required this.width,
    super.key,
  });

  final double width;

  @override
  State<AnimatedSideBar> createState() => _AnimatedSideBarState();
}

class _AnimatedSideBarState extends State<AnimatedSideBar> {
  late double initWidth = widget.width * .1;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: ColorConstants.primaryColor,
      width: initWidth,
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
            onPressed: () async {
              setState(() {
                initWidth = widget.width;
              });
              await Future<void>.delayed(const Duration(milliseconds: 500))
                  .whenComplete(RoutingRepository.goHome);
              setState(() {
                initWidth = widget.width * .1;
              });
            },
          ),
          QmButton.icon(
            icon: EvaIcons.infoOutline,
            onPressed: () async {
              setState(() {
                initWidth = widget.width;
              });
              await Future<void>.delayed(const Duration(milliseconds: 500))
                  .whenComplete(RoutingRepository.goAbout);
              setState(() {
                initWidth = widget.width * .1;
              });
            },
          ),
          QmButton.icon(
            icon: EvaIcons.emailOutline,
            onPressed: () async {
              setState(() {
                initWidth = widget.width;
              });
              await Future<void>.delayed(const Duration(milliseconds: 500))
                  .whenComplete(RoutingRepository.goContact);
              setState(() {
                initWidth = widget.width * .1;
              });
            },
          ),
          const Expanded(
            child: VerticalDivider(
              color: ColorConstants.accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
