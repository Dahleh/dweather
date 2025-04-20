// import 'package:dweather/core/utils/utlis_const.dart';
// import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
// import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
//
// class IDScanner {
//   final IdModel _idDetails = IdModel();
//   String idCard = '';
//
//   Future<IdModel?>? scanFrontID({required File imageToScan}) async {
//     try {
//       bool isFaceFound = await detectFace(imageToScan);
//       InputImage inputImage = InputImage.fromFile(imageToScan);
//       List<String> cnicDates = [];
//       final textDetector = TextRecognizer();
//       final RecognizedText recognisedText =
//           await textDetector.processImage(inputImage);
//       for (TextBlock block in recognisedText.blocks) {
//         for (TextLine line in block.lines) {
//           if (line.text.toLowerCase().contains('qatar')) {
//             log('Card detected');
//             idCard = line.text;
//           }
//           if (line.text.toLowerCase().contains("name") ||
//               line.text.toLowerCase().contains("nane") ||
//               line.text.toLowerCase().contains("nam") ||
//               line.text.toLowerCase().contains("ame")) {
//             log('name found');
//             _idDetails.cnicHolderName = line.text.replaceAll("Name:", '');
//             if (_idDetails.cnicHolderName.toLowerCase().contains('nane')) {
//               String text = _idDetails.cnicHolderName;
//               _idDetails.cnicHolderName = text.replaceAll('Nane:', '');
//             }
//             log("name: ${_idDetails.cnicHolderName}");
//           }
//           if (line.text == line.text.toUpperCase() &&
//               !line.text.contains('.') &&
//               !isNumeric(line.text) &&
//               !line.text.contains("/", 2)) {
//             log('nationality found ${line.text}');
//             _idDetails.nationality = line.text;
//           }
//           if (line.text.toLowerCase() == 'residency permit' ||
//               line.text.toLowerCase().contains('residency') ||
//               line.text.toLowerCase().contains('permit') ||
//               line.text.toLowerCase() == 'id. card' ||
//               line.text.toLowerCase().contains('id. car')) {
//             _idDetails.idType = line.text;
//           }
//           for (TextElement element in line.elements) {
//             String selectedText = element.text;
//             if (isNumeric(selectedText) && selectedText.length == 11) {
//               _idDetails.cnicNumber = selectedText;
//               log('cnic number found ${_idDetails.cnicNumber}');
//             }
//             if (selectedText.length == 10 &&
//                 ((selectedText.contains("/", 2) &&
//                         selectedText.contains("/", 5)) ||
//                     (selectedText.contains(".", 2) &&
//                         selectedText.contains(".", 5)))) {
//               cnicDates.add(selectedText.replaceAll(".", "/"));
//             }
//           }
//         }
//       }
//       if (cnicDates.isNotEmpty &&
//           _idDetails.cnicExpiryDate.length == 10 &&
//           !cnicDates.contains(_idDetails.cnicExpiryDate)) {
//         cnicDates.add(_idDetails.cnicExpiryDate);
//       }
//       if (cnicDates.isNotEmpty &&
//           _idDetails.cnicIssueDate.length == 10 &&
//           !cnicDates.contains(_idDetails.cnicIssueDate)) {
//         cnicDates.add(_idDetails.cnicIssueDate);
//       }
//       if (cnicDates.isNotEmpty &&
//           _idDetails.cnicExpiryDate.length == 10 &&
//           !cnicDates.contains(_idDetails.cnicExpiryDate)) {
//         cnicDates.add(_idDetails.cnicExpiryDate);
//       }
//       if (cnicDates.length > 1) {
//         cnicDates = sortDateList(dates: cnicDates);
//       }
//       if (cnicDates.length == 1 &&
//           _idDetails.cnicHolderDateOfBirth.length != 10) {
//         _idDetails.cnicHolderDateOfBirth = cnicDates[0];
//       } else if (cnicDates.length == 2) {
//         _idDetails.cnicHolderDateOfBirth = cnicDates[0];
//         _idDetails.cnicExpiryDate = cnicDates[1];
//       }
//       log('dates ${_idDetails.cnicHolderDateOfBirth} ${_idDetails.cnicExpiryDate} ');
//       textDetector.close();
//       if (_idDetails.cnicExpiryDate != '' &&
//           _idDetails.cnicHolderDateOfBirth != '' &&
//           _idDetails.cnicNumber != '' &&
//           _idDetails.cnicHolderName != '' &&
//           _idDetails.nationality != '' &&
//           idCard != '' &&
//           _idDetails.idType != '' &&
//           isFaceFound) {
//         return Future.value(_idDetails);
//       } else {
//         return null;
//       }
//     } catch (e) {
//       log('Error in scanning front $e');
//       return null;
//     }
//   }
//
//   bool isNumeric(String s) {
//     final numericRegex = RegExp(r'^[0-9]+$');
//     return numericRegex.hasMatch(s);
//   }
//
//   /// it will sort the dates
//   static List<String> sortDateList({required List<String> dates}) {
//     List<DateTime> tempList = [];
//     DateFormat format = DateFormat("dd/MM/yyyy",'en');
//     for (int i = 0; i < dates.length; i++) {
//       tempList.add(format.parse(dates[i]));
//     }
//     tempList.sort((a, b) => a.compareTo(b));
//     dates.clear();
//     for (int i = 0; i < tempList.length; i++) {
//       dates.add(format.format(tempList[i]));
//     }
//     return dates;
//   }
//
//   Future<bool> detectFace(File imageToScan) async {
//     InputImage inputImage = InputImage.fromFile(imageToScan);
//     FaceDetector faceDetector = FaceDetector(options: FaceDetectorOptions());
//     final List<Face> faces = await faceDetector.processImage(inputImage);
//     if (faces.isEmpty) {
//       return false;
//     } else {
//       log('face found');
//       return true;
//     }
//   }
//
//   Future<bool?> scanBackID({required File imageToScan}) async {
//     String? employer, passportNum;
//     InputImage inputImage = InputImage.fromFile(imageToScan);
//     final textDetector = TextRecognizer();
//     final RecognizedText recognisedText =
//         await textDetector.processImage(inputImage);
//     for (TextBlock block in recognisedText.blocks) {
//       for (TextLine line in block.lines) {
//         if (line.text.toLowerCase().contains('passport num')) {
//           passportNum = line.text;
//         }
//         if (line.text.toLowerCase().contains('employer')) {
//           employer = line.text;
//         }
//       }
//     }
//     if (employer != null && passportNum != null) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
