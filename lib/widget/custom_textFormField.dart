import 'package:flutter/material.dart';

class TextFormFiledd extends StatelessWidget {
   TextFormFiledd({super.key,this.hintText,this.onChanged,this.keyboardType});
String? hintText;
TextInputType? keyboardType;
void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        keyboardType:keyboardType ,
        onChanged: onChanged,
              decoration: InputDecoration(
                
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
    );
  }
}