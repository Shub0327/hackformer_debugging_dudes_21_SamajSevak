import 'dart:ffi';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class DataController extends GetxController{

  final firebaseInstance = FirebaseFirestore.instance;
  Map userProfileData = {'fullname': '', 'homeadd': ''};


  void onReady() {
    super.onReady();
    // getUserProfileData(id);
  }

  Future<void> getUserProfileData(id) async {
    // print('${email}');
    try {
      var response = await firebaseInstance
          .collection('users')
          .where('id', isEqualTo: id)
          .get();
      response.docs.forEach((result) {
        print(result.data());
      });
      if (response.docs.length > 0) {
        userProfileData['fullname'] = response.docs[0]['Full_Name'];
        userProfileData['homeadd'] = response.docs[0]['Home_Address'];
      }
      print(userProfileData);
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print(error);
    }
  }



}
