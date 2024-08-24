//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../constants/colors.dart';
// import '../../constants/url_constants.dart';
// import '../../utils/app_utils.dart';
// import 'account/accounts_screen.dart';
// import 'home/home.dart';
//
// class DashBoardScreen extends StatefulWidget {
//   final int currentIndex;
//   const DashBoardScreen({super.key, required this.currentIndex});
//
//   @override
//   State<DashBoardScreen> createState() => DashBoardScreenState();
// }
//
// class DashBoardScreenState extends State<DashBoardScreen> with TickerProviderStateMixin{
//   AnimateIconController controllerIcon1 = AnimateIconController();
//   AnimateIconController controllerIcon2 = AnimateIconController();
//   AnimateIconController controllerIcon3 = AnimateIconController();
//   AnimateIconController controllerIcon4 = AnimateIconController();
//
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       dashboardController.selectedIndex.value = widget.currentIndex;
//       initialiseDashboard();
//     });
//     super.initState();
//   }
//   void initialiseDashboard() async{
//   }
//
//   bool isWeb = GetPlatform.isWeb;
//   DateTime lastTimeBackbuttonWasClicked = DateTime.now();
//
//   static final List<Widget> _widgetOptions = <Widget>[
//     const MyHomePage(title: "title"),
//     const MyHomePage(title: "title"),
//     const MyHomePage(title: "title"),
//     const AccountsScreen(),
//   ];
//   List<BottomNavigationBarItem> _navBarsItems() {
//     return [
//       BottomNavigationBarItem(
//         icon:
//         animationsIcon(controller: controllerIcon1, activeIcon: Icons.home, inactiveIcon: Icons.home_outlined),
//         // Icon(
//         //     dashboardController.selectedIndex.value == 0
//         //         ?Icons.home:
//         //     Icons.home_outlined,
//         //     color: dashboardController.selectedIndex.value == 0
//         //         ? primary
//         //         : secondary),
//         label: 'Dashboard'.tr,
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(dashboardController.selectedIndex.value == 1
//             ?
//         Icons.shopping_cart:Icons.shopping_cart_outlined,
//             color: dashboardController.selectedIndex.value == 1
//                 ? primary
//                 : secondary),
//         label: 'Themes'.tr,
//       ),
//       BottomNavigationBarItem(
//         icon:Icon( dashboardController.selectedIndex.value == 2
//             ?Icons.shopping_bag:Icons.shopping_bag_outlined,
//             color: dashboardController.selectedIndex.value == 2
//                 ? primary
//                 : secondary),
//         label: 'Bag'.tr,
//       ),
//       // BottomNavigationBarItem(
//       //   icon: Icon(dashboardController.selectedIndex.value == 3
//       //       ?Icons.favorite:Icons.favorite_border_outlined,
//       //       color: dashboardController.selectedIndex.value == 3
//       //           ? primary
//       //           : secondary),
//       //   label: 'Favorite'.tr,
//       // ),
//       BottomNavigationBarItem(
//         icon: Icon(
//             dashboardController.selectedIndex.value == 3
//                 ?Icons.person:Icons.person_outlined,
//             color: dashboardController.selectedIndex.value == 3
//                 ? primary
//                 : secondary),
//         label: 'Account'.tr,
//       ),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: isWeb
//           ? () async {
//         if (Navigator.of(context).userGestureInProgress) {
//           return false;
//         } else {
//           return true;
//         }
//       }
//           : () async {
//         if (dashboardController.selectedIndex.value == 0) {
//           if (DateTime.now().difference(lastTimeBackbuttonWasClicked) >=
//               const Duration(seconds: 2)) {
//             showToast(message: "Press the back button again to go back");
//             lastTimeBackbuttonWasClicked = DateTime.now();
//             return false;
//           } else {
//             return true;
//           }
//         } else {
//           return false;
//         }
//       },
//       child: Scaffold(
//         // key: scaffoldKey,
//         // drawer: Drawers(),
//         body: Obx(
//               () => Center(
//             child: _widgetOptions
//                 .elementAt(dashboardController.selectedIndex.value),
//           ),
//         ),
//         bottomNavigationBar: Obx(
//               () => BottomNavigationBar(
//
//               items: _navBarsItems(),
//               type: BottomNavigationBarType.fixed,
//               currentIndex: dashboardController.selectedIndex.value,
//               selectedItemColor: primary,
//               unselectedItemColor: secondary,
//               backgroundColor: white,
//               showUnselectedLabels: true,
//               iconSize: 25,
//               onTap: dashboardController.onItemTapped,
//               elevation: 5),
//         ),
//       ),
//     );
//   }
// }
