// import 'package:dweather/core/utils/utlis_const.dart';
// import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
//
// class FaceScanner {
//   Future<bool> scanFace({required File imageToScan}) async {
//     InputImage inputImage = InputImage.fromFile(imageToScan);
//     FaceDetector faceDetector = FaceDetector(
//         options: FaceDetectorOptions(
//       enableClassification: true,
//       enableContours: true,
//       enableLandmarks: true,
//       enableTracking: true,
//     ));
//     final List<Face> faces = await faceDetector.processImage(inputImage);
//     if (faces.isEmpty) {
//       return false;
//     } else {
//       final face = faces.first;
//       if (isFaceClear(face)) {
//         faceDetector.close();
//         return true;
//       } else {
//         return false;
//       }
//     }
//   }
//
//   bool isFaceClear(Face face) {
//     final headEulerAngleY = face.headEulerAngleY;
//     final headEulerAngleZ = face.headEulerAngleZ;
//     bool isLeftEyeOpen = (face.leftEyeOpenProbability ?? 0) > 0.99;
//     bool isRightEyeOpen = (face.rightEyeOpenProbability ?? 0) > 0.99;
//     if (headEulerAngleY != null &&
//         headEulerAngleZ != null &&
//         isLeftEyeOpen &&
//         isRightEyeOpen) {
//       if (headEulerAngleY < -15) {
//         return false;
//       } else if (headEulerAngleY > 15) {
//         return false;
//       } else if (headEulerAngleZ.abs().isNegative) {
//         return false;
//       } else if (headEulerAngleZ.abs() > 4) {
//         return false;
//       } else {
//         log(face.leftEyeOpenProbability.toString());
//         log(face.rightEyeOpenProbability.toString());
//         log(face.headEulerAngleX.toString());
//         log(face.headEulerAngleY.toString());
//         log("${face.headEulerAngleZ} ${face.headEulerAngleZ!.abs()}");
//         face.landmarks.forEach((key, value) {
//           log('Landmark: $key Value: ${value?.position.magnitude}');
//         });
//         face.contours.forEach((key, value) {
//           log('key: $key Value: ${value?.points}');
//         });
//         return true;
//       }
//     } else {
//       return false;
//     }
//   }
// }
