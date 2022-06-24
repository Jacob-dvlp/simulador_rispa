import '../imports.dart';

class GesturedetectorWidget extends StatelessWidget {
  final double left;
  final double top;
  const GesturedetectorWidget({Key key, this.left, this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
      ),
      child: const CircleAvatar(
        maxRadius: 28,
        backgroundColor: Colors.red,
      ),
    );
  }
}
