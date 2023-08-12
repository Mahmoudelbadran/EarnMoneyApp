import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'person_state.dart';
class PersonLogic extends Cubit<PersonState> {
  PersonLogic() : super(AppIntialStates());
  static PersonLogic get(context) => BlocProvider.of<PersonLogic>(context);
  final ImagePicker picker = ImagePicker();
  void getFromGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      print(image.path);
    }
    emit(ImageGalleryState());
  }
  void getFromCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      print(image.path);
    }
    emit(ImageCameraState());
  }

  }