import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../auth/data/repositories/auth_repository.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});


  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {

  final AuthRepository _repository = AuthRepository();

  UserModel? user;

  bool loading = true;


  @override
  void initState() {
    super.initState();
    loadUser();
  }


  Future<void> loadUser() async {

    final result =
        await _repository.getCurrentUser();


    setState(() {

      user = result;

      loading = false;

    });

  }



  Future<void> _logout() async {

    await _repository.logout();


    if(!mounted) return;


    Navigator.pushReplacementNamed(
      context,
      AppRoutes.login,
    );

  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: const Color(0xFF001F3F),


      appBar: AppBar(

        backgroundColor: const Color(0xFF001F3F),

        elevation: 0,

        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),


      body: loading

          ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xFFD4AF37),
              ),
            )


          : Center(

              child: Column(

                mainAxisAlignment:
                    MainAxisAlignment.center,


                children: [


                  Container(

                    height: 110,

                    width: 110,


                    decoration: BoxDecoration(

                      color:
                          const Color(0xFF012A50),

                      borderRadius:
                          BorderRadius.circular(60),


                      border: Border.all(

                        color:
                            const Color(0xFFD4AF37),

                        width: 2,

                      ),

                    ),


                    child: const Icon(

                      Icons.person,

                      color:
                          Color(0xFFD4AF37),

                      size: 60,

                    ),

                  ),



                  const SizedBox(height: 25),



                  Text(

                    user?.name ??
                        "Carszivo User",

                    style: const TextStyle(

                      color: Colors.white,

                      fontSize: 24,

                      fontWeight:
                          FontWeight.bold,

                    ),

                  ),



                  const SizedBox(height: 10),



                  Text(

                    user?.email ??
                        "No email available",

                    style: const TextStyle(

                      color: Colors.white70,

                      fontSize: 16,

                    ),

                  ),



                  const SizedBox(height: 35),



                  ElevatedButton(

                    onPressed: _logout,


                    style:
                        ElevatedButton.styleFrom(

                      backgroundColor:
                          const Color(0xFFD4AF37),

                    ),


                    child: const Text(

                      "Logout",

                      style: TextStyle(

                        color: Colors.black,

                        fontWeight:
                            FontWeight.bold,

                      ),

                    ),

                  ),


                ],

              ),

            ),

    );

  }

}
