import 'package:processo_seletivo/page/cadastro/imports.dart';

class WidgetCustomRessultBar extends StatelessWidget {
  const WidgetCustomRessultBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back,
              color: Colors.teal[300],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          SizedBox(
              width: 180,
              child: LinearProgressIndicator(
                backgroundColor: Colors.white,
                value: 10,
                color: Colors.teal[300],
              )),
          const SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.close,
              color: Colors.teal[300],
            ),
          ),
        ],
      ),
    );
  }
}
