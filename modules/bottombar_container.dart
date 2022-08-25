import 'package:argus_mainte_app/custom_image_select/widgets/image_editor_pro/firexcode/firexcode.dart';

class BottomBarContainer extends StatelessWidget {
  final Color colors;
  final Function ontap;
  final String title;
  final IconData icons;

  const BottomBarContainer(
      {Key key, this.ontap, this.title, this.icons, this.colors})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return xColumnCC
        .list([
          icons.xIcons(color: Colors.white),
          4.0.sizedHeight(),
          title.xText(color: Colors.white)
        ])
        .xInkWell(onTap: ontap)
        .xMaterial(
          color: colors,
        )
        .xContainer(padding: EdgeInsets.all(0.0), width: xwidth(context) / 5);
  }
}
