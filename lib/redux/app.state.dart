//import 'package:roamhome_homeowner_app/models/homes.dart';
//import 'package:roamhome_homeowner_app/models/reservations.dart';

class AppState {
  AppState({
    //this.token,
    //this.loginEmail,
    //this.loginOTP,
    //this.email,
    //this.name,
    //this.selectedReservation,
    this.available
  });

  //String ?token;
  //String ?loginEmail;
  //int ?loginOTP;
  //String ?email;
  //String ?name;
  //Reservations ?selectedReservation;
  //List<Homes> ?setHomes;
  bool? available;

  AppState.copyWith(AppState copyWith,{
  //  String ?token,
    //String ?loginEmail,
   //int ?loginOTP,
    //String ?email,
    //String ?name,
    //Reservations ?selectedReservation,
    //List<Homes> ?setHomes
    bool ?available
  }) : this (
     // token: token ?? copyWith.token,
     // loginEmail: loginEmail ?? copyWith.loginEmail,
     // loginOTP: loginOTP ?? copyWith.loginOTP,
   //   email: email ?? copyWith.email,
     // name: name ?? copyWith.name,
      //selectedReservation: selectedReservation ?? copyWith.selectedReservation,
      //setHomes: setHomes ?? copyWith.setHomes
    available: available ?? copyWith.available
  );


}