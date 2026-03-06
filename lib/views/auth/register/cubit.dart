import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranquility/core/logic/dio_helper.dart';

import '../../../core/logic/goto.dart';

class CubitRegister extends Cubit<DataState> {
  final name = TextEditingController();
  final phone = TextEditingController();
  final age = TextEditingController();
  final gender = TextEditingController();
  final password = TextEditingController();

  final myKey = GlobalKey<FormState>();

  CubitRegister() : super(DataState.init);

  Future<void> sendData() async {
    emit(DataState.loading);
    final resp = await DioHelper.sendData(pass: '');
    if (resp.isSuccess) {
      emit(DataState.success);

      showMessage('i Success');
    } else {
      emit(DataState.failed);

      showMessage(resp.data?['message'], isError: true);
    }
  }
}
