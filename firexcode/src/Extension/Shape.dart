import 'package:argus_mainte_app/custom_image_select/widgets/image_editor_pro/firexcode/firexcode.dart';

extension ShapeX on BorderRadiusGeometry {
  ShapeBorder xShapeBorder({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: this, side: side);
  }
}
