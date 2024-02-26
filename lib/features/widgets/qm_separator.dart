import 'package:quantum_muscle_website/library.dart';

class QmSeparator extends StatelessWidget {
  const QmSeparator(
    this.text,
    this.type, {
    super.key,
  });

  const QmSeparator.textOnLeft(this.text, {super.key})
      : type = QmSeparatorType.textOnLeft;

  const QmSeparator.textOnRight(this.text, {super.key})
      : type = QmSeparatorType.textOnRight;

  const QmSeparator.textOnMiddle(this.text, {super.key})
      : type = QmSeparatorType.textOnMiddle;

  final String text;
  final QmSeparatorType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case QmSeparatorType.textOnLeft:
        return Row(
          children: [
            const Expanded(
              child: Divider(
                height: 1,
                color: ColorConstants.accentColor,
              ),
            ),
            QmGap.hMedium(),
            QmText(
              text: text,
              color: ColorConstants.textColor,
              isHeadline: true,
            ),
            QmGap.hMedium(),
            const Expanded(
              child: Divider(
                height: 1,
                color: ColorConstants.accentColor,
              ),
            ),
          ],
        );
      case QmSeparatorType.textOnRight:
        return Row(
          children: [
            const Expanded(
              child: Divider(
                height: 1,
                color: ColorConstants.accentColor,
              ),
            ),
            QmGap.hMedium(),
            QmText(
              text: text,
              color: ColorConstants.textColor,
              isHeadline: true,
            ),
            QmGap.hMedium(),
          ],
        );
      case QmSeparatorType.textOnMiddle:
        return Row(
          children: [
            const Expanded(
              child: Divider(
                height: 1,
                color: ColorConstants.accentColor,
              ),
            ),
            QmGap.hMedium(),
            QmText(
              text: text,
              color: ColorConstants.textColor,
              isHeadline: true,
            ),
            QmGap.hMedium(),
            const Expanded(
              child: Divider(
                height: 1,
                color: ColorConstants.accentColor,
              ),
            ),
          ],
        );
    }
  }
}

enum QmSeparatorType {
  textOnLeft,
  textOnRight,
  textOnMiddle,
}
