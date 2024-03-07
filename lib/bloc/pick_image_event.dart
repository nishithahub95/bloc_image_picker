
import 'package:equatable/equatable.dart';


abstract class PickImageEvent extends Equatable {
 const  PickImageEvent();

 @override
 List  get props => [];
}

class CameraImagePicker extends PickImageEvent{

}
class GalleryImagePicker extends PickImageEvent{

}

