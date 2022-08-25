import 'package:argus_mainte_app/custom_image_select/widgets/image_editor_pro/firexcode/firexcode.dart';

extension Colorx on int {
  Color xColors() {
    return Color(this);
  }

  Widget xSizedHeight() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget xSizedHeightWidth() {
    return SizedBox(
      height: toDouble(),
      width: toDouble(),
    );
  }

  Widget xSizedWidth() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
