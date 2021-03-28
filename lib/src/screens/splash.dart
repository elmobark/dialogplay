import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:playground/src/Components/my_blur_list_dialog.dart';
import 'package:playground/src/helpers/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String selectednumber =
      'HEY SAMARA CLICK THE BUTTON THE SHOW DIALOG AND CHANGE VALUE';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Parent(
        style: ParentStyle()
          ..linearGradient(colors: [Colors.amber, Colors.white])
          ..width(double.infinity),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Txt(selectednumber),
            OutlinedButton(
              onPressed: () {
                BlurDialogBuilder.show(
                  context,
                  children: List.generate(100, (i) {
                    return Txt('$i');
                  }),
                  barrierCoolor: Colors.white.withOpacity(.5),
                  blur: 5,
                  onSelect: (selected) {
                    setState(() {
                      selectednumber = 'the selected index is $selected';
                    });
                  },
                );
              },
              child: Txt('Show List Dialog'),
            ),
            OutlinedButton(
              onPressed: () {
                Helpers.showSuccessOverlay(context,
                    message: 'تمت الأضافة إلي سيارتك');
              },
              child: Txt('Show Success Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
