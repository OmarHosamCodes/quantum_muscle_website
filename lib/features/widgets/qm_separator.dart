import 'package:quantum_muscle_website/library.dart';

class QmSeparator {
  static Widget textOnLeft(String text) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: ColorConstants.accentColor,
          ),
        ),
        QmGap.hMedium(),
        FittedBox(
          child: QmText(
            text: text,
            isHeadline: true,
          ),
        ),
        QmGap.hMedium(),
      ],
    );
  }

  static Widget textOnRight(String text) {
    return Row(
      children: [
        QmGap.hMedium(),
        FittedBox(
          child: QmText(
            text: text,
            isHeadline: true,
          ),
        ),
        QmGap.hMedium(),
        const Expanded(
          child: Divider(
            color: ColorConstants.accentColor,
          ),
        ),
      ],
    );
  }

  static Widget textOnMiddle(String text) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: ColorConstants.accentColor,
          ),
        ),
        QmGap.hMedium(),
        FittedBox(
          child: QmText(
            text: text,
            isHeadline: true,
          ),
        ),
        QmGap.hMedium(),
        const Expanded(
          child: Divider(
            color: ColorConstants.accentColor,
          ),
        ),
      ],
    );
  }
}
