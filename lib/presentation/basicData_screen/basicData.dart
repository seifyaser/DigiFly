import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';

class BasicDataScreen extends StatefulWidget {
  const BasicDataScreen({super.key});

  @override
  State<BasicDataScreen> createState() => _BasicDataScreenState();
}

class _BasicDataScreenState extends State<BasicDataScreen> {
  final TextEditingController _firstNameController =
      TextEditingController(text: "Ahmed");
  final TextEditingController _lastNameController =
      TextEditingController(text: "Alaa");
 final TextEditingController _emailController =
      TextEditingController(text: "ahmed.alaa123@gmail.com");
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              buildEditableTextField(
              label: "Email",
              controller: _emailController,
            ),
            const SizedBox(height: 5),
    
            const SizedBox(height: 25),
            buildEditableTextField(
              label: "First name",
              controller: _firstNameController,
            ),
            const SizedBox(height: 25),
            buildEditableTextField(
              label: "Last name",
              controller: _lastNameController,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // تنفيذ حفظ البيانات هنا
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Apptheme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text('Save',style: Apptheme.buttonBoldsecondary,),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

Widget buildEditableTextField({
  required String label,
  required TextEditingController controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: Apptheme.caption2),
      Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style: Apptheme.caption1,
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1),
                ),
              ),
            ),
          ),
          const Icon(Icons.edit, size: 18, color: Colors.grey),
        ],
      ),
    ],
  );
}

}
