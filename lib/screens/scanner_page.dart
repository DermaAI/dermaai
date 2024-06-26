// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:derma_ai/main.dart';

// late List<CameraDescription> cameras;

// class Scanner extends StatefulWidget {
//   const Scanner({super.key});

//   @override
//   State<Scanner> createState() => _ScannerState();
// }

// class _ScannerState extends State<Scanner> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TextButton(
//           onPressed: () {},
//           child: const Text('Go Back'),
//         ),
//       ),
//     );
//   }
// }

// /// CameraApp is the Main Application.
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//   const CameraApp({Key? key}) : super(key: key);

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   late CameraController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(cameras[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             print('User denied camera access.');
//             break;
//           default:
//             print('Handle other errors.');
//             break;
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(
//       home: CameraPreview(controller),
//     );
//   }
// }
