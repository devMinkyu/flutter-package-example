import 'package:flutter/material.dart';
import 'package:flutter_package_example/oss_licenses.dart';

class OssScreen extends StatefulWidget {
  const OssScreen({Key? key}) : super(key: key);

  @override
  State<OssScreen> createState() => _OssScreenState();
}

class _OssScreenState extends State<OssScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
          top: true,
          left: false,
          right: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text(
                '라이센스',
              ),
            ),
            body: Column(
              children: ossLicenses.map((package) {
                return OssWidget(
                  package: package,
                );
              }).toList(),
            ),
          )),
    );
  }
}

class OssWidget extends StatelessWidget {
  final Package package;

  const OssWidget({
    Key? key,
    required this.package,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(package.name),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(bottom: 20),
          child: Text(package.description),
        ),
        const SizedBox(
          height: 10,
        ),
        if (package.license != null) Text(package.license!),
      ],
    );
  }
}
