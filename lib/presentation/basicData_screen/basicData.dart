import 'package:digify/generated/l10n.dart';
import 'package:digify/presentation/basicData_screen/widgets/editableTextfield.dart';
import 'package:digify/theme/appTheme.dart';
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
      ).showSnackBar(SnackBar(content: Text(S.of(context).accountSave)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Apptheme.primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          s.accountTitle,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                label: s.accountEmail,
                controller: _emailController,
                hintText: s.accountEmail,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return s.authValidationEnterEmail;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              buildEditableTextField(
                label: s.accountFirstName,
                controller: _firstNameController,
                hintText: s.accountFirstName,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return s.authValidationEnterName;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              buildEditableTextField(
                label: s.accountLastName,
                controller: _lastNameController,
                hintText: s.accountLastName,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return s.authValidationEnterName;
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
                  child: Text(
                    s.accountSave,
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
