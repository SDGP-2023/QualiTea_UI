import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';



class uploadImage extends StatefulWidget {
  uploadImage() : super();

  final String title = "Upload Image";

  uploadImageDemo createState() => uploadImageDemo();
  
}


class uploadImageDemo extends State<uploadImage> {

  File? SelectedImage;
  String? message = "";

  uploadImage (){
    
  }

  Future getImage() async{
   final pickedImage = await ImagePicker().getImage(source: ImageSource.gallery);
   SelectedImage = File(pickedImage!.path);
   setState(() {
     
   });
  }

  Widget build (BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor:Color.fromARGB(255, 9, 58, 7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectedImage == null
            ? Text("Please upload the image you wish to get information of.")
            : Image.file(SelectedImage!),
            Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: TextButton.icon(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 9, 58, 7),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.upload_file,color: Colors.white),
              label: Text("Upload Image",
              style: TextStyle(
                color: Colors.white,
              ),),),),
              Padding(
                padding: EdgeInsets.all(35.0),
                child: Column(
                  children: [
              SizedBox(height: 30),
              Text(
                "Our app will determine the relevant tea grade and the price range of the leaf images uploaded by you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "We will also provide you with additional information about your images based on our system's capabilities.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
          ],
        ),
       ),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        backgroundColor: Color.fromARGB(255, 9, 58, 7),
        child: Icon(Icons.add_a_photo ,),
        // foregroundColor: Color.fromARGB(255, 9, 58, 7),
        ),
    );
  }
}
  // Future<File>? file;
  // String status = '';

//   ChooseImage() {
//     // setState(() {
//     //   file = ImagePicker.pickImage(source : ImageSource.gallery);
//     // });
    
//   }

//   startUpload() {}

// Widget showImage() {
//   return FutureBuilder<File>(
//     future: file,
//     builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
//       if (snapshot.connectionState == ConnectionState.done &&
//       null != snapshot.data) {
//         return Flexible(
//           child: Image.file(
//             snapshot.data!,
//             fit: BoxFit.fill,
//           ),
//           );
//       }else if (null != snapshot.error) {
//         return const Text(
//           'Error Picking Image',
//           textAlign: TextAlign.center,
//         );
//       }else {
//         return const Text(
//           'No Image Selected',
//           textAlign: TextAlign.center,
//         );
//       }
//     }
//   );
// }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Upload Image"),
//       ),
//       body: Container(
//           padding: EdgeInsets.all(30.0),
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 OutlinedButton(
//                   onPressed: ChooseImage,
//                   child: Text('Choose Image'),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 showImage(),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 OutlinedButton(
//                   onPressed: startUpload,
//                   child: Text('Upload Image'),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text(
//                   status,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                   color: Color.fromARGB(255, 195, 255, 160),
//                     fontWeight: FontWeight.w500,
//                     fontSize: 20.0,
//                   ),
//                 )
//               ])),
//     );
//   }

  