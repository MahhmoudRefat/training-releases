import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_releases_one/bloctestcode/cubitcode/states.dart';

class namecubit extends Cubit<NameStates> {
  namecubit() : super(InitialState());

  var namecontroller = TextEditingController();

  static namecubit get(context) {
    return BlocProvider.of(context);
  }

  void ChangedName() {
    emit(ChangedNamestate());
  }
}
