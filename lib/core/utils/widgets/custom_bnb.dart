import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';
import 'package:nursery/features/activities/presentation/view/activities_view.dart';
import 'package:nursery/features/events/presentation/view/widgets/event_body.dart';
import 'package:nursery/features/home/presentations/views/home_view.dart';
import 'package:nursery/features/setting/presentation/view/widgets/setting_body.dart';


class CustomBNB extends StatefulWidget {
  const CustomBNB({super.key});

  @override
  State<CustomBNB> createState() => _CustomBNBState();
}

class _CustomBNBState extends State<CustomBNB> {
  final List<Widget> screens = const [HomeView(), ActivitiesView(),EventsBody(),SettingBody()];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    final h = SizeApp(context).height;
     return SafeArea(
       child: Scaffold(
         body: PageTransitionSwitcher(
           duration: const Duration(milliseconds: 400),
           transitionBuilder: (Widget child, Animation<double> animation, Animation<double> secondaryAnimation) {
             return SlideTransition(
               position: Tween<Offset>(
                 begin: const Offset(1.0, 0.0),
                 end: Offset.zero,
               ).animate(animation),
               child: child,
             );
           },
           child: screens[currentIndex],
         ),
         bottomNavigationBar: Container(
           decoration:  BoxDecoration(
             color: const Color(0xFF225B8B),
             borderRadius: BorderRadius.vertical(top: Radius.circular(w*0.05))
           ),
           child: Padding(
             padding:  EdgeInsets.symmetric(horizontal: w*0.02, vertical:h*0.02),
             child: GNav(
               rippleColor: const Color(0xFF225B8B),
               hoverColor: const Color(0xFF225B8B),
               gap: w*0.02,
               activeColor: const Color(0xFF225B8B),
               iconSize: w*0.06,
               padding:  EdgeInsets.symmetric(horizontal:w*0.02, vertical: h*0.01),
               duration: const Duration(milliseconds: 400),
               tabBackgroundColor: Colors.grey[100]!,
               color: Colors.white,
               tabs:  [
                 GButton(
                   icon:Iconsax.home_bold ,
                   text: 'Home',
                   textStyle: JStyles.style14W400(w, const Color(0xFF225B8B)),
                 ),
                 GButton(
                   icon: Iconsax.shapes_bold,
                   text: 'Activities',
                   textStyle: JStyles.style14W400(w, const Color(0xFF225B8B)),
                 ),
                 GButton(
                   icon: Iconsax.calendar_1_bold,
                   text: 'Calender',
                   textStyle: JStyles.style14W400(w, const Color(0xFF225B8B)),
                 ),
                 GButton(
                   icon:Iconsax.setting_2_bold,
                   text: 'Setting',
                   textStyle: JStyles.style14W400(w, const Color(0xFF225B8B)),
                 ),
               ],
               selectedIndex: currentIndex,
               onTabChange: (index) {
                 setState(() {
                   currentIndex = index;
                 });
               },
             ),
           ),
         ),
       ),
     );
  }
}
