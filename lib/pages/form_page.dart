// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:bloom_services/modules/form_controller.dart';
import 'package:get/get.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());
    return GetBuilder<FormController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text(
            'Create Ad',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue[900],
                      radius: 50,
                      child: const Center(
                        child: Icon(
                          Icons.photo_camera_outlined,
                        ),
                      ),
                    ),
                  ),
                ),
                TextField(
                  controller: controller.nameText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: controller.ageText,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: controller.idNumberText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ghana Card ID Number',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: controller.professionText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Profession',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: controller.addressText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: controller.telephoneText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Telephone Number',
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: InkWell(
                    onTap: () {
                      Get.back();

                      controller.addToProfile(
                        controller.nameText.text,
                        controller.ageText.text,
                        controller.idNumberText.text,
                        controller.professionText.text,
                        controller.addressText.text,
                        controller.telephoneText.text,
                      );
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Create Ad',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
