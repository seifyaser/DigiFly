import 'package:digify/presentation/basicData_screen/widgets/editableTextfield.dart';
import 'package:digify/theme/appTheme.dart';
import 'package:digify/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class BasicDataScreen extends StatefulWidget {
  const BasicDataScreen({super.key});

  @override
  State<BasicDataScreen> createState() => _BasicDataScreenState();
}

class _BasicDataScreenState extends State<BasicDataScreen> {
  final _formKey = GlobalKey<FormState>(); 
  final TextEditingController _firstNameController = TextEditingController(
    text: "Ahmed",
  );
  final TextEditingController _lastNameController = TextEditingController(
    text: "Alaa",
  );
  final TextEditingController _emailController = TextEditingController(
    text: "ahmed.alaa123@gmail.com",
  );

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _saveData() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Data saved successfully!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Apptheme.primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Edit Account',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              buildEditableTextField(
                label: "Email",
                controller: _emailController,
                hintText: 'Enter your email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              buildEditableTextField(
                label: "First Name",
                controller: _firstNameController,
                hintText: 'Enter your first name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'First name is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              buildEditableTextField(
                label: "Last Name",
                controller: _lastNameController,
                hintText: 'Enter your last name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Last name is required';
                  }
                  return null;
                },
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _saveData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Apptheme.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: Apptheme.buttonBoldsecondary,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
