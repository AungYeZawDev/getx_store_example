import 'package:flutter/material.dart';
import 'package:getx_store_example/widgets/rounded_input.dart';

class UpdateMenu extends StatelessWidget {
  const UpdateMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      debugPrint("UpdateMenu screen building...");

    return Scaffold(
      appBar: AppBar(title: const Text("Update Menu")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoundedInput(
              hintText: "Name",
              onSubmit: (value) => debugPrint(value),
            ),
            const SizedBox(height: 16),
            RoundedInput(
              hintText: "Color",
              onSubmit: (value) => debugPrint(value),
            ),
            const SizedBox(height: 16),
            RoundedInput(
              hintText: "Location",
              onSubmit: (value) => debugPrint(value),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => {},
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text("Name"),
                SizedBox(height: 16),
                Text("Color"),
                SizedBox(height: 16),
                Text("Location"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
