// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// class CustomNetworkGate extends StatelessWidget {
//   final Widget onlineChild;
//   final Widget offlineChild;
//   const CustomNetworkGate(
//       {super.key, required this.onlineChild, required this.offlineChild});
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<NetworkStatus>(builder: (context, provider, child) {
//       return provider == NetworkStatus.Online ? onlineChild : offlineChild;
//     });
//   }
// }