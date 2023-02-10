// ignore_for_file: prefer_typing_uninitialized_variables, import_of_legacy_library_into_null_safe

import 'package:bloom_services/modules/form_controller.dart';
import 'package:bloom_services/pages/form_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.find();
    return GetBuilder<FormController>(
      builder: (_) => Scaffold(
        // backgroundColor: Colors.blue[900],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          elevation: 0,
          title: const Text(
            'Services',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue[900]),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.photo_camera_outlined,
                      color: Color.fromARGB(255, 13, 71, 161),
                    ),
                  ),
                ),
                const Divider(color: Colors.white),
                ListTile(
                  leading: Icon(
                    Icons.plumbing_sharp,
                    color: Colors.blue[900],
                  ),
                  title: const Text(
                    'Plumbing Works',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.house_sharp,
                    color: Colors.blue[900],
                  ),
                  title: const Text(
                    'Masonery Works',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.carpenter_outlined,
                    color: Colors.blue[900],
                  ),
                  title: const Text(
                    'Capentry Works',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.car_repair_outlined,
                    color: Colors.blue[900],
                  ),
                  title: const Text(
                    'Mechanic / Vulcanizer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.electrical_services_outlined,
                    color: Colors.blue[900],
                  ),
                  title: const Text(
                    'Electrical Works',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.blue[900],
                  ),
                  title: const Text(
                    'Sign Out',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.itemCount.value,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 400,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 5,
                              offset: Offset(4, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FittedBox(
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border() //to be removed later
                                    ),
                                child: Icon(
                                  Icons.photo_camera,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.profile.value[index].name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Profession: ${controller.profile.value[index].profession}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Contact: ${controller.profile.value[index].telephone}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SmoothStarRating(
                                          borderColor: Colors.amber,
                                          rating: 4,
                                          isReadOnly: true,
                                        ),
                                        const SizedBox(width: 30),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 50,
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.blue[900],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Text(
                                                  'View Profile',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Get.to(() => const FormPage());
          },
          child: const Icon(
            Icons.edit,
            color: Color.fromARGB(255, 13, 71, 161),
          ),
        ),
      ),
    );
  }
}
