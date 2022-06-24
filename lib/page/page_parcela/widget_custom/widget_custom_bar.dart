import 'package:processo_seletivo/page/cadastro/imports.dart';

class WidgetCustomBar extends StatelessWidget {
  const WidgetCustomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 170.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.arrow_back,
                color: Colors.teal[300],
              ),
            ),
          ),
          SizedBox(
              width: 120,
              child: LinearProgressIndicator(
                backgroundColor: Colors.white,
                value: 10,
                color: Colors.teal[300],
              )),
          const SizedBox(
            width: 60,
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              value: 10,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
