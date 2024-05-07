import 'package:flutter/material.dart';
import 'package:flutter_project/language/project_text.dart';

class PropertyMobileAppDemo extends StatefulWidget {
  const PropertyMobileAppDemo({super.key});

  @override
  State<PropertyMobileAppDemo> createState() => _PropertyMobileAppDemoState();
}

class _PropertyMobileAppDemoState extends State<PropertyMobileAppDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding().generalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ProjectText().title,
              style: _titleTextTheme(context),
            ),
            Text(
              ProjectText().subtitle,
              style: _subTitleTextTheme(context),
            ),
            Padding(
              padding: ProjectPadding().textFieldPadding,
              child: SizedBox(
                height: TextFieldSizedBox().sizedBoxHeight,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Align(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search))),
                    border: _textFieldBorderRadius(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: ProjectPadding().paddingTop,
              child: Text(
                ProjectText().cardTypeText,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    
                    child: Image.asset('assets/white_house.jpg'),
                  ),
                  Card(
                    child: Image.asset('assets/white_house.jpg'),
                  ),
                  Card(
                    child: Image.asset('assets/white_house.jpg'),
                  ),
                  Card(
                    child: Image.asset('assets/white_house.jpg'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder _textFieldBorderRadius() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(10));
  }

  TextStyle? _titleTextTheme(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium?.copyWith(letterSpacing: 1.5);

  TextStyle? _subTitleTextTheme(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
          letterSpacing: 2,
          color: const Color.fromARGB(255, 3, 116, 209),
        );
  }
}

class ProjectPadding {
  final generalPadding = const EdgeInsets.all(20);
  final paddingTop = const EdgeInsets.only(top: 20);
  final textFieldPadding =
      const EdgeInsets.only(right: 35) + const EdgeInsets.only(top: 20);
}

class TextFieldSizedBox {
  final double sizedBoxHeight = 55;
}
