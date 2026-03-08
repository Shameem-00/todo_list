import 'package:flutter/material.dart';
import 'package:prac_list/custom_text_form_field.dart';
import 'title_model.dart';


class PracForm extends StatelessWidget {
  PracForm({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Enter Title',
                controller: titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Title";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: subtitleController,
                hintText: 'Enter Subtitle',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Please Enter Subtitle';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              SizedBox(width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          print('Title: ${titleController.text}');
                          final prac = PracModel(
                              title: titleController.text,
                              subtitle: subtitleController.text);
                          Navigator.pop(context,prac);
                        }

                      },
                      child: Text('Save')
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
