import '../imports.dart';

class WidgetCustomBar extends StatelessWidget {
  const WidgetCustomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 180.0),
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
              width: 100,
              child: LinearProgressIndicator(
                backgroundColor: Colors.white,
                value: 10,
                color: Colors.teal[300],
              )),
          const SizedBox(
            width: 70,
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
