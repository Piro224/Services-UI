import 'package:bloom_services/modules/profile_models.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  Rx<List<ProfileModel>> profile = Rx<List<ProfileModel>>([]);
  TextEditingController nameText = TextEditingController();
  TextEditingController ageText = TextEditingController();
  TextEditingController idNumberText = TextEditingController();
  TextEditingController professionText = TextEditingController();
  TextEditingController addressText = TextEditingController();
  TextEditingController telephoneText = TextEditingController();
  late ProfileModel profileModel;
  var itemCount = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameText.dispose();
    ageText.dispose();
    idNumberText.dispose();
    professionText.dispose();
    addressText.dispose();
    telephoneText.dispose();
    
  }

  addToProfile(
    String name,
    String age,
    String idNumber,
    String profession,
    String address,
    String telephone,
  ) {
    profileModel = ProfileModel(
      name: name,
      age: age,
      idNumber: idNumber,
      profession: profession,
      address: address,
      telephone: telephone,
    );
    profile.value.add(profileModel);
    itemCount.value = profile.value.length;
    nameText.clear();
    ageText.clear();
    idNumberText.clear();
    professionText.clear();
    addressText.clear();
    telephoneText.clear();
  }

  removeProfile(int index) {
    profile.value.removeAt(index);
    itemCount.value = profile.value.length;
  }
}
