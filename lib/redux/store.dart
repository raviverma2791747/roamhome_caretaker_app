import 'package:redux/redux.dart';
import 'package:roamhome_caretaker_app/redux/app.state.dart';
import 'package:roamhome_caretaker_app/redux/reducer.dart';

final Store<AppState> store = Store<AppState>(reducer,
    initialState: AppState(available: false));