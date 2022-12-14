import 'package:argus_mainte_app/custom_image_select/widgets/image_editor_pro/firexcode/firexcode.dart';

class ExpandableText extends StatefulWidget {
  ExpandableText(this.text,
      {this.crossAxisAlignment = CrossAxisAlignment.center,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.expand = const Text('More Details'),
      this.unexpand = const Text('less Details'),
      this.heightunexpand = 50.0});
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final Widget expand;
  final Widget unexpand;
  final Widget text;
  final double heightunexpand;
  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: ConstrainedBox(
              constraints: isExpanded
                  ? BoxConstraints()
                  : BoxConstraints(maxHeight: widget.heightunexpand),
              child: widget.text)),
      isExpanded
          ? widget.unexpand.xFlatButton(onPressed: () {
              setState(() => isExpanded = false);
            })
          : widget.expand.xFlatButton(onPressed: () {
              setState(() => isExpanded = true);
            })
    ].xColumn(
        crossAxisAlignment: widget.crossAxisAlignment,
        mainAxisAlignment: widget.mainAxisAlignment);
  }
}
