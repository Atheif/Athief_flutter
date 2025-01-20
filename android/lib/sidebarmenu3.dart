import 'package:flutter_bloc/flutter_bloc.dart';
import 'sidebar.dart';
import 'sidebar2.dart';

class SidebarMenuBloc extends Bloc<SidebarMenuEvent, SidebarMenuState> {
  SidebarMenuBloc() : super(SidebarMenuInitial()) {
    on<FetchSidebarMenuEvent>((_, emit) async {
      try {
        emit(SidebarMenuSuccess(_.menu!));
      } catch (e) {
        emit(
          SidebarMenuError(e.toString()),
        );
      }
    });
  }
}