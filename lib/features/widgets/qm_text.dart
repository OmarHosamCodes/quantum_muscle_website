import 'package:quantum_muscle_website/library.dart';

class QmText extends StatelessWidget {
  const QmText({
    required this.text,
    super.key,
    this.style = const TextStyle(
      fontSize: 15,
      fontFamily: 'ubuntu',
      color: ColorConstants.textColor,
      fontWeight: FontWeight.w700,
    ),
    this.isSeccoundary = false,
    this.isHeadline = false,
    this.color,
    this.overFlow,
  });
  final String text;
  final TextStyle style;
  final bool isSeccoundary;
  final bool isHeadline;

  final TextOverflow? overFlow;
  final Color? color;
  double get fontSize {
    if (isSeccoundary) {
      return 10;
    } else if (isHeadline) {
      return 20;
    } else {
      return style.fontSize!;
    }
  }

  Color? get textColor =>
      color ??
      (isSeccoundary
          ? ColorConstants.textSeccondaryColor
          : ColorConstants.textColor);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        color: textColor,
        overflow: overFlow,
        fontSize: fontSize,
      ),
    );
  }
}
