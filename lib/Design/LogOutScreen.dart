
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testdesign/Design/themeServices.dart';
import 'package:testdesign/Design/utils.dart';
class ScreenDesign extends StatefulWidget {
  const ScreenDesign({Key? key}) : super(key: key);

  @override
  State<ScreenDesign> createState() => _ScreenDesignState();
}

class _ScreenDesignState extends State<ScreenDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          padding: EdgeInsetsDirectional.only(top: 0, start: 12, end: 12),
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: ThemeSwitcher(
                      builder: (context) {
                        bool isDarkMode =
                            ThemeModelInheritedNotifier.of(context).theme.brightness ==
                                Brightness.light;
                        String themeName = isDarkMode ? 'dark' : 'light';
                        return DayNightSwitcherIcon(
                          isDarkModeEnabled: isDarkMode,
                          onStateChanged: (bool darkMode) async {
                            var service = await ThemeService.instance
                              ..save(darkMode ? 'light' : 'dark');
                            var theme = service.getByName(themeName);
                            ThemeSwitcher.of(context)
                                .changeTheme(theme: theme, isReversed: darkMode);
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 60,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 55,
                  child: IconButton(icon: Icon(Icons.person_outline,color: Colors.orange,size: 40,),onPressed: (){},),
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 4),
                alignment: Alignment.center,
                child: Text("Atif khan",style: mediumTextStyleb,),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 4),
                alignment: Alignment.center,
                child: Text("atifk7848@gmail.com",style: mediumTextStyle,),
              ),
              verticalSpaceSmall,
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 4.0,
                  ),
                  onPressed: () {  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(15.0),
                    child: Text(
                      'Upgrade To PRO',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                ),
              ),
              verticalSpaceMedium,
              Container(
                margin: EdgeInsetsDirectional.only(start: 8, end: 8),
                height: 55,
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    color: Colors.indigo[100],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsetsDirectional.only(start: 5),
                                child: Icon(Icons.privacy_tip_outlined)),
                            horizontalSpaceSmall,
                            Container(
                                margin: EdgeInsetsDirectional.only(start: 8),
                                child: Text(
                                  "Privacy",
                                  style: mediumTextStyle,
                                )),
                          ],
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: IconButton(

                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
              Container(
                margin: EdgeInsetsDirectional.only(start: 8, end: 8),
                height: 55,
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    color: Colors.indigo[100],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsetsDirectional.only(start: 5),
                                child: Icon(Icons.history)),
                            horizontalSpaceSmall,
                            Container(
                                margin: EdgeInsetsDirectional.only(start: 8),
                                child: Text(
                                  "Purchase History",
                                  style: mediumTextStyle,
                                )),
                          ],
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: IconButton(

                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
              Container(
                margin: EdgeInsetsDirectional.only(start: 8, end: 8),
                height: 55,
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    color: Colors.indigo[100],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsetsDirectional.only(start: 5),
                                child: Icon(Icons.help_outline)),
                            horizontalSpaceSmall,
                            Container(
                                margin: EdgeInsetsDirectional.only(start: 8),
                                child: Text(
                                  "Help & Support",
                                  style: mediumTextStyle,
                                )),
                          ],
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: IconButton(

                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
              Container(
                margin: EdgeInsetsDirectional.only(start: 8, end: 8),
                height: 55,
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    color: Colors.indigo[100],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsetsDirectional.only(start: 5),
                                child: Icon(Icons.settings_outlined)),
                            horizontalSpaceSmall,
                            Container(
                                margin: EdgeInsetsDirectional.only(start: 8),
                                child: Text(
                                  "Settings",
                                  style: mediumTextStyle,
                                )),
                          ],
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: IconButton(

                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
              Container(
                margin: EdgeInsetsDirectional.only(start: 8, end: 8),
                height: 55,
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    color: Colors.indigo[100],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsetsDirectional.only(start: 5),
                                child: Icon(Icons.person_add_outlined)),
                            horizontalSpaceSmall,
                            Container(
                                margin: EdgeInsetsDirectional.only(start: 8),
                                child: Text(
                                  "Invite a Friend",
                                  style: mediumTextStyle,
                                )),
                          ],
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: IconButton(

                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 4.0,
                  ),
                  onPressed: () {  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(15.0),
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                ),
              ),
              verticalSpaceSmall,
            ],
          ),
        ));
  }
}
