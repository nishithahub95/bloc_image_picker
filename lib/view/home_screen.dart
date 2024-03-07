import 'dart:io';

import 'package:bloc_image_picker/bloc/pick_image_bloc.dart';
import 'package:bloc_image_picker/bloc/pick_image_event.dart';
import 'package:bloc_image_picker/bloc/pick_image_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image picker using bloc'),
      ),
      body: Column(
        children: [
          Center(
            child: BlocBuilder<PickImageBloc, PickImageState>(
              builder: (context, state) {
                return state.file==null? ElevatedButton(
                  onPressed: () {
                        context.read<PickImageBloc>().add(CameraImagePicker());
                  }, child: Icon(Icons.upload_file),

                ):Image.file(File(state.file!.path.toString()));
              },
            ),
          )
        ],
      ),
    );
  }
}
