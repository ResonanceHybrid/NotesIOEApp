import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class PolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: "Policy",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   "Privacy Policy",
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: 10),
            Text(
              "This privacy policy applies to the Notes IOE app (hereby referred to as \"Application\") for mobile devices that was created by Notes IOE (hereby referred to as \"Service Provider\") as a Free service. This service is intended for use \"AS IS\".",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Information Collection and Use",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The Application collects information when you download and use it. This information may include information such as:\n\n"
              "- Your device's Internet Protocol address (e.g. IP address)\n"
              "- The pages of the Application that you visit, the time and date of your visit, the time spent on those pages\n"
              "- The time spent on the Application\n"
              "- The operating system you use on your mobile device\n\n"
              "The Application does not gather precise information about the location of your mobile device.\n\n"
              "The Service Provider may use the information you provided to contact you from time to time to provide you with important information, required notices and marketing promotions.\n\n"
              "For a better experience, while using the Application, the Service Provider may require you to provide us with certain personally identifiable information, including but not limited to Email, Name. The information that the Service Provider request will be retained by them and used as described in this privacy policy.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Third Party Access",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Only aggregated, anonymized data is periodically transmitted to external services to aid the Service Provider in improving the Application and their service. The Service Provider may share your information with third parties in the ways that are described in this privacy statement.\n\n"
              "Please note that the Application utilizes third-party services that have their own Privacy Policy about handling data. Below are the links to the Privacy Policy of the third-party service providers used by the Application:\n\n"
              "- Google Play Services\n"
              "- AdMob\n"
              "- Firebase\n\n"
              "The Service Provider may disclose User Provided and Automatically Collected Information:\n\n"
              "- as required by law, such as to comply with a subpoena, or similar legal process;\n"
              "- when they believe in good faith that disclosure is necessary to protect their rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;\n"
              "- with their trusted services providers who work on their behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Opt-Out Rights",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You can stop all collection of information by the Application easily by uninstalling it. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Data Retention Policy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The Service Provider will retain User Provided data for as long as you use the Application and for a reasonable time thereafter. If you'd like them to delete User Provided Data that you have provided via the Application, please contact them at contact@notesioe.com and they will respond in a reasonable time.",
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 20),
            Text(
              "Security",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The Service Provider is concerned about safeguarding the confidentiality of your information. The Service Provider provides physical, electronic, and procedural safeguards to protect information the Service Provider processes and maintains.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Changes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "This Privacy Policy may be updated from time to time for any reason. The Service Provider will notify you of any changes to the Privacy Policy by updating this page with the new Privacy Policy. You are advised to consult this Privacy Policy regularly for any changes, as continued use is deemed approval of all changes.\n\n"
              "This privacy policy is effective as of 2024-06-04",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Your Consent",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "By using the Application, you are consenting to the processing of your information as set forth in this Privacy Policy now and as amended by us.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "If you have any questions regarding privacy while using the Application, or have questions about the practices, please contact the Service Provider via email at contact@notesioe.com.\n\n",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
