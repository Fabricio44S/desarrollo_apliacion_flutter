import 'package:code1/models/menu_optional.dart';
import 'package:code1/screens/screnns.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions=<MenuOptions>[
    MenuOptions(route: 'Home',  name: 'Home Screen', screen: HomeScreem(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Biblioteca',  name: 'Biblioteca', screen: Biblioteca(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Foro',  name: 'Foro', screen: Foro(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Informacion',  name: 'Informacion', screen: Informacion(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Noticias',  name: 'Noticias', screen: Noticias(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Pensum',  name: 'Pensum', screen: Pensum(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Repositorio',  name: 'Repositorio', screen: Repositorio(), icon: Icons.add_ic_call_outlined),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext) >appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

// static Map<String, Widget Function(BuildContext)> routes = {
// 'Home': (BuildContext context)=> HomeScreem(),
//         'Biblioteca': (BuildContext context)=> Biblioteca(),
//         'Foro': (BuildContext context)=> Foro(),
//         'Informacion': (BuildContext context)=> Informacion(),
//         'Noticias': (BuildContext context)=> Noticias(),
//         'Pensum': (BuildContext context)=> Pensum(),
//         'Repositorio': (BuildContext context)=> Repositorio(),
//         'HomePruebas': (BuildContext context)=> HomeScreenP(),
// };
static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Biblioteca(),
    );
  }

}