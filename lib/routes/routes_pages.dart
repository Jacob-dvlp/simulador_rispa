
import 'imports.dart';

class Routepage {
  static final List<GetPage> pages = [
    GetPage(
        name: CadastroPage.routeName,
        page: () => const CadastroPage(),
        binding: CadastroBinding()),
    GetPage(
      name: QuantiaPage.routeName,
      page: () => const QuantiaPage(),
      binding: QuantiaBindings(),
    ),
    GetPage(
      name: PageParcelaPage.routeName,
      page: () => const PageParcelaPage(),
      binding: PageParcelaBindings(),
    ),
    GetPage(
      name: ResultPagePage.routeName,
      page: () => const ResultPagePage(),
      binding: ResultPageBindings(),
    ),
  ];
}
