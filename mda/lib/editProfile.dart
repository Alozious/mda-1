import 'package:flutter/material.dart';
import 'package:mda/appbarWidget.dart';
import 'package:mda/profileWiget.dart';
import 'package:mda/profile_page.dart';
import 'package:mda/user.dart';
import 'package:mda/userPreferences.dart';
import 'textfieldWidget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  User user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
                imagePath: user.imagePath,
                isEdit: true,
                onClicked: () async {}),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
//about textfield
             const SizedBox(height: 24),
           TextFieldWidget(
             label: 'About',
             text: user.about,
             maxLines: 5,
             onChanged: (about) {},
           ),
          ],
        ),
      );
}
