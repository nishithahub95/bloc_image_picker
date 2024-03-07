import 'package:bloc_image_picker/bloc/pick_image_bloc.dart';
import 'package:bloc_image_picker/utils/image_picker_utils.dart';
import 'package:bloc_image_picker/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>PickImageBloc(ImagePickerUtils()))
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',

        home: HomeScreen(),
      ),
    );
  }
}
