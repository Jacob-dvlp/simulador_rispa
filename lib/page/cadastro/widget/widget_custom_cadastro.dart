import '../imports.dart';

class WidgetCustomCadastro extends GetView<CadastroController> {
  const WidgetCustomCadastro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                child: Image.asset(imgOrginal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Simule',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  Text(
                    'agora',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.teal[300],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Crédito rápido, fácil e seguro!',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "Qual é o seu ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'nome completo',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller.nomeController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.teal[300]),
                  ),
                  label: const Text('Nome completo'),
                  labelStyle: TextStyle(
                    color: Colors.teal[300],
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.teal[300]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "E seu ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'e-mail?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: const Text('seuemail@emai.com'),
                  labelStyle: TextStyle(
                    color: Colors.teal[300],
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.teal[300]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.teal[300]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    controller.verficarDados();
                    // controller.nomeController.clear();
                    // controller.emailController.clear();
                  },
                  child: const Text(
                    "Continuar",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal[300],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
