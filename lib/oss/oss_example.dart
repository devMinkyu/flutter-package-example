import 'package:flutter/material.dart';
import 'package:flutter_package_example/freezed/user_freezed.dart';
import 'package:flutter_package_example/oss_licenses.dart';

class OssScreen extends StatelessWidget {
  const OssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: ossLicenses.map((oss) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(oss.name),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(oss.description),
            ),
            const SizedBox(
              height: 10,
            ),
            if (oss.license != null) Text(oss.license!),
          ],
        );
      }).toList(),
    );
  }
}
