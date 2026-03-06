import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranquility/core/logic/dio_helper.dart';

import '../../../core/logic/goto.dart';

class CubitChangePassword extends Cubit<DataState>{

  final oldPassword = TextEditingController();
  final newPassword = TextEditingController();
  final confirmNewPassword = TextEditingController();
  final myKey = GlobalKey<FormState>();

  CubitChangePassword():super(DataState.init);

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