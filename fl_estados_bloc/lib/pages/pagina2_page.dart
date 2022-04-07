import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_estados_bloc/models/user.dart';
import 'package:fl_estados_bloc/bloc/user/user_bloc.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: const Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                final newUser = User(
                  nombre: 'Andres',
                  edad: 34,
                  profesiones: ['Tec Analista de Sistemas']
                );
                
                userBloc.add(ActivateUser(newUser));
              }
            ),

            MaterialButton(
              child: const Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(ChangeUserAge(25));
              }
            ),

            MaterialButton(
              child: const Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(AddUserProfs( 'FrontEnd Dev'));
              }
            ),

          ],
        )
     ),
   );
  }
}