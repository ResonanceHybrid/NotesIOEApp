import 'package:flutter/material.dart';
import 'package:ioe/screens/components/home_screen.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          AppBarTop(
            pageTitle: 'App Instructions',
            onDrawerIconPressed: () {
              Scaffold.of(context).openDrawer();
            }, // Pass the page title here
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubSection(
                    text:
                        'If the desired subject is not found, try to contact us through the contact page or search for the subjects in the search bar.'),
                SubSection(
                    text:
                        'All the downloaded files will be stored in the Downloads section, which can be found at the end of the bottom navigation bar.'),
                SubSection(
                    text:
                        'The PDFs opened are fetched from the web, so it might take some time to fulfill the requests.'),
                SubSection(
                    text:
                        'Please inform us if any bugs or misleading navigation are found through our report issue page.'),
                SubSection(
                    text:
                        'Some of the subjects\' notes might be missing, so please be patient and keep checking the app.'),
                SubSection(
                    text:
                        'The changed syllabus/course content of IOE will be updated and changed accordingly.'),
                SubSection(
                    text:
                        'Use the bottom navigation bar to easily switch between different sections of the app and sidebar navigation for useful pages.'),
                SubSection(
                    text:
                        'Utilize the search feature by entering keywords related to the subject or notes you are looking for.'),
                SubSection(
                    text:
                        'Keep your app updated to receive the latest features and improvements.'),
                SubSection(
                    text:
                        'If you need to use the app offline, make sure to download the necessary files beforehand.'),
                SubSection(
                    text:
                        'We value your feedback! Please share your suggestions to help us improve the app.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
