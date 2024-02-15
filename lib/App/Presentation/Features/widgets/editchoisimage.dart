import 'dart:io';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Data/Manager/editcubit/edit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class editChoiceImage extends StatefulWidget {
  const editChoiceImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<editChoiceImage> createState() => _editChoiceImageState();
}

class _editChoiceImageState extends State<editChoiceImage> {
  File? _file;

  imagepick() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _file = File(image.path);
      BlocProvider.of<EditCubit>(context).file = _file;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _file != null
            ? Image.file(
                _file!,
              )
            : SizedBox(),
        CustomeButton(
          size: widget.size,
          onPressed: () {
            imagepick();
          },
          titel: 'change image',
        ),
      ],
    );
  }
}
