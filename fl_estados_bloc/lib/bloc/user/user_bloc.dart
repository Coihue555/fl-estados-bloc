import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:fl_estados_bloc/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';


class UserBloc extends Bloc<UserEvent, UserState>{
  UserBloc( ) : super( const UserInitialState() ){

    on<ActivateUser>( (event, emit) => emit( UserSetState( event.user ) ));
    
  }



}