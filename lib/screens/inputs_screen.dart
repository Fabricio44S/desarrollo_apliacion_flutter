// import 'package:flutter/material.dart';
// class InputsScreen extends StatelessWidget {
//   const InputsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Formularios'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding( 
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Column(children: [
//               TextFormField(
//                     autofocus: true,
//                     initialValue: 'Buscar Libro',
//                     textCapitalization: TextCapitalization.words,
//                     onChanged: (value) {
//                         print('valor:$value');
//                         },

//                     ),


//               ],
//     ),
//     ),

//       ),
//     );
//   }
// }  




import 'package:flutter/material.dart';
class InputsScreen extends StatelessWidget {
const InputsScreen({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('INPUTS Y FORMS')),
body: SingleChildScrollView(
child: Padding(
padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
child: Column(
children: [
TextFormField(
//puedes cambiar true por false y ver que pasa
autofocus: true,
initialValue: '',
textCapitalization: TextCapitalization.words,
onChanged: (value) {
print('valor:$value');
},
validator: (value) {
if (value == null) return 'este campo es requerido';
//return 'ingrese su nombre';
return value.length < 5 ? 'Minimo 5 letras' : null;
},
autovalidateMode: AutovalidateMode.always,
decoration: InputDecoration(
hintText: 'nombre del usuario',
labelText: 'nombre',
helperText: 'Solo letras',
counterText: '4',
suffixIcon: Icon(Icons.indeterminate_check_box_sharp),
icon: Icon(Icons.assignment_ind_outlined),
border: OutlineInputBorder(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(10),
),
),
),
),
],
),
),
),
);
}
}