

import 'package:bloc/bloc.dart';
import 'package:bloc_image_picker/bloc/pick_image_event.dart';
import 'package:bloc_image_picker/bloc/pick_image_state.dart';
import 'package:bloc_image_picker/utils/image_picker_utils.dart';
import 'package:image_picker/image_picker.dart';

class PickImageBloc extends Bloc<PickImageEvent, PickImageState> {
  final ImagePickerUtils imagePickerUtils;
  PickImageBloc(this.imagePickerUtils) : super(const PickImageState()) {
    on<CameraImagePicker>(cameraImagePicker);
  }

  void cameraImagePicker(CameraImagePicker event,Emitter<PickImageState> state)async{
XFile? file=await imagePickerUtils.cameraCapture();
emit(PickImageState(file: file));
  }
}
