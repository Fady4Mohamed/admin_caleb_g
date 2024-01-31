
import 'dart:io';

import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChoiceImage extends StatefulWidget {
  const ChoiceImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ChoiceImage> createState() => _ChoiceImageState();
}

class _ChoiceImageState extends State<ChoiceImage> {
File? file;

imagepick()async {
final ImagePicker picker = ImagePicker();
final XFile? image = await picker.pickImage(source: ImageSource.gallery);
if (image!=null) {
file=File(image.path);
setState(() {
});
}
}
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        file!=null?Image.file(file!,):SizedBox() ,CustomeButton(
          size: widget.size,
          onPressed: () {
            imagepick();
          },
          titel: 'choice image',
        ),
      ],
    );
  }
}