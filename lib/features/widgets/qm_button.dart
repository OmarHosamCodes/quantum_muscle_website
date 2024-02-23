import 'package:quantum_muscle_website/library.dart';

class QmButton {
  static Widget icon({
    required IconData icon,
    void Function()? onPressed,
    double iconSize = 20,
    Color iconColor = ColorConstants.iconColor,
    String? tooltip,
  }) {
    final onPressedFunction = onPressed ?? () {};
    return IconButton(
      tooltip: tooltip,
      onPressed: onPressedFunction,
      icon: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }

  static Widget text({
    required String text,
    void Function()? onPressed,
  }) {
    final onPressedFunction = onPressed ?? () {};
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.accentColor,
        foregroundColor: ColorConstants.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressedFunction,
      child: FittedBox(
        child: QmText(
          text: text,
          // isHeadline: true,
        ),
      ),
    );
  }

  static Widget mixed({
    required String text,
    required IconData icon,
    void Function()? onPressed,
  }) {
    final onPressedFunction = onPressed ?? () {};
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.accentColor,
        foregroundColor: ColorConstants.iconColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
      ),
      onPressed: onPressedFunction,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 15),
          const SizedBox(width: 10),
          QmText(
            text: text,
            // isHeadline: true,
          ),
        ],
      ),
    );
  }
}
