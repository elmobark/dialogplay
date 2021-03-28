import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlurListDialog extends StatelessWidget {
  final List<Widget> children;
  final Color backColor;
  final Function(int selected) onSelect;

  const BlurListDialog({Key key, this.children, this.backColor, this.onSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      magnification: 1.9,
      itemExtent: 50,
      squeeze: 1,
      diameterRatio: 2,
      looping: true,
      onSelectedItemChanged: onSelect,
      selectionOverlay: SizedBox.shrink(),
      backgroundColor: Colors.transparent,
      children: children,
    );
  }
}

class BlurDialogBuilder {
  factory BlurDialogBuilder.show(BuildContext context,
      {Function(int selected) onSelect,
      Color barrierCoolor,
      double blur,
      @required List<Widget> children}) {
    showGeneralDialog(
      context: context,
      barrierColor: barrierCoolor,
      barrierDismissible: true,
      barrierLabel: "Dialog",
      transitionDuration: Duration(milliseconds: 180),
      pageBuilder: (_, __, ___) {
        return Parent(
          style: ParentStyle()
            ..background.blur(blur)
            ..borderRadius(all: 0),
          child: Stack(
            children: [
              SizedBox.expand(
                child: BlurListDialog(
                  children: children,
                  onSelect: onSelect,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              )
            ],
          ),
        );
      },
    );
    return BlurDialogBuilder();
  }
  const BlurDialogBuilder();
}
