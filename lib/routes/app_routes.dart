import 'package:code1/models/menu_optional.dart';
import 'package:code1/screens/screnns.dart';
import 'package:code1/widget/card_screnn.dart';
import 'package:code1/widget/custom_card_1.dart';
import 'package:code1/widget/custom_card_2.dart';
import 'package:code1/widget/custom_card_3.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions=<MenuOptions>[
    MenuOptions(route: 'Home',  name: 'Home Screen', screen: HomeScreenP(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Biblioteca',  name: 'Biblioteca', screen: Biblioteca(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Foro',  name: 'Foro', screen: Foro(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Informacion',  name: 'Informacion', screen: Informacion(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Noticias',  name: 'Noticias', screen: Noticias(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Pensum',  name: 'Pensum', screen: Pensum(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Repositorio',  name: 'Repositorio', screen: Repositorio(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Card', name: 'card', screen: CardScreen(), icon: Icons.yard),
    MenuOptions(route: 'Card1', name: 'customCard1', screen: CustomCardType1(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Card2', name: 'customCard2', screen: Card2Page(imageUrl: 'assets/images/biblioteca.jpg',), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'Card3', icon: Icons.yard, name:'customCard3', screen: Card3Page(),),
    MenuOptions(route: 'Avatar', name: 'AvatarScrenn', screen: AvatarScreen(), icon: Icons.accessibility_new,),
    MenuOptions(route: 'Inputs', name: 'InputsScreen', screen: InputsScreen(), icon: Icons.ac_unit_sharp,),
    MenuOptions(route: 'Analisis', name: 'AnalisisTemp2', screen: AnalisisTemp2(), icon: Icons.save_alt,),

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