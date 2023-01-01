//import 'package:roamhome_homeowner_app/redux/actions/home_actions.dart';
//import 'package:roamhome_homeowner_app/redux/actions/login_actions.dart';
import 'package:roamhome_caretaker_app/redux/app.state.dart';
import 'package:roamhome_caretaker_app/redux/actions.dart';

AppState reducer(AppState state, action) {
  /*if(action is LoginAction) {
    return AppState.copyWith(state, loginEmail: action.loginEmail, loginOTP: action.loginOTP);
  }

  if(action is AddToken) {
    return AppState.copyWith(state, token: action.token);
  }

  if(action is FetchAccount) {
    return AppState.copyWith(state, name: action.name, email: action.email);
  }

  if(action is SelectReservation) {
    return AppState.copyWith(state, selectedReservation: action.selectedReservation);
  }

  if(action is SetHomes) {
    return AppState.copyWith(state, setHomes: action.setHomes);
  }*/

  if(action is AvailableAction){
    return AppState.copyWith(state,available: action.available);
  }

  return state;
}