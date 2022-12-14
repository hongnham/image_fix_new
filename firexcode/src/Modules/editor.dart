import 'package:argus_mainte_app/custom_image_select/widgets/image_editor_pro/firexcode/firexcode.dart';

extension TextEditor on String {
  Widget xCodeEditor() {
    var lines = '\n'.allMatches(this).length + 1;
    return <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 5,
          ),
          10.0.sizedWidth(),
          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 5,
          ),
          10.0.sizedHeightWidth(),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 5,
          ),
        ].xRow(),
      ),
      10.0.sizedHeight(),
      <Widget>[
        Container(
          width: 50,
          child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: lines,
              itemBuilder: (context, a) {
                return a == 0
                    ? Container(
                        height: 0,
                        width: 0,
                      )
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: a.toString().xTextColorWhite(),
                      );
              }),
        ),
        Flexible(
            child: SelectableText(
          this,
          showCursor: true,
          toolbarOptions: ToolbarOptions(selectAll: true, copy: true),
          style: TextStyle(color: Colors.white, fontSize: 14),
          cursorColor: Colors.red,
        ))
      ].xRow().xContainer(
          padding: EdgeInsets.all(12), shadowColor: Colors.grey, blurRadius: 12)
    ]
        .xColumn()
        .xContainer(margin: EdgeInsets.all(15), rounded: 5, color: Colors.black)
        .xContainer(
            // padding: EdgeInsets.all(30.0),
            rounded: 20,
            // blurRadius: 12.0,
            // shadowColor: Colors.grey,
            color: Colors.white,
            margin: EdgeInsets.all(30.0));
  }
}
