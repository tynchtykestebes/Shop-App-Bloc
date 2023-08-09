import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'wishist_event.dart';
part 'wishist_state.dart';

class WishistBloc extends Bloc<WishistEvent, WishistState> {
  WishistBloc() : super(WishistInitial()) {
    on<WishistEvent>((event, emit) {});
  }
}
