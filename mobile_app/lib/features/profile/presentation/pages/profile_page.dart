import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../auth/data/repositories/auth_repository.dart';
import '../../../favorites/data/favorites_manager.dart';

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
    final result = await _repository.getCurrentUser();

    if (!mounted) return;

    setState(() {
      user = result;
      loading = false;
    });
  }

  Future<void> _logout() async {
    await _repository.logout();

    if (!mounted) return;

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
        centerTitle: true,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: loading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    const SizedBox(height: 10),

                    Stack(
                      alignment: Alignment.center,
                      children: [

                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 70,
                            color: Colors.black,
                          ),
                        ),

                        Positioned(
                          bottom: 8,
                          right: 8,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    Text(
                      user?.name.isNotEmpty == true
                          ? user!.name
                          : "Carszivo User",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      user?.email ?? "",
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 25),

                    const ProfileStatistics(),

                    const SizedBox(height: 25),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const Text(
                            "Personal Information",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),

                          const SizedBox(height: 20),

                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const CircleAvatar(
                              backgroundColor: Color(0xFF001F3F),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            title: const Text("Full Name"),
                            subtitle: Text(user?.name ?? ""),
                          ),

                          const Divider(),

                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const CircleAvatar(
                              backgroundColor: Color(0xFF001F3F),
                              child: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                            title: const Text("Email"),
                            subtitle: Text(user?.email ?? ""),
                          ),

                          const Divider(),

                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.white,
                              ),
                            ),
                            title: Text("Account Status"),
                            subtitle: Text("Active"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [

                        Expanded(
                          child: _buildMenuCard(
                            icon: Icons.directions_car,
                            title: "My Listings",
                          ),
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: _buildMenuCard(
                            icon: Icons.favorite,
                            title: "Favorites",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    Row(
                      children: [

                        Expanded(
                          child: _buildMenuCard(
                            icon: Icons.auto_stories,
                            title: "Stories",
                          ),
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: _buildMenuCard(
                            icon: Icons.people,
                            title: "Followers",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    Row(
                      children: [

                        Expanded(
                          child: _buildMenuCard(
                            icon: Icons.person_add,
                            title: "Following",
                          ),
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: _buildMenuCard(
                            icon: Icons.settings,
                            title: "Settings",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton.icon(
                        onPressed: _logout,
                        icon: const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildMenuCard({
    required IconData icon,
    required String title,
  }) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              color: const Color(0xFF001F3F),
              size: 32,
            ),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProfileStatistics extends StatelessWidget {
  const ProfileStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          _buildStat(
            title: "Listings",
            value: "0",
            icon: Icons.directions_car,
          ),

          _buildStat(
            title: "Favorites",
            value: FavoritesManager.instance.count.toString(),
            icon: Icons.favorite,
          ),

          _buildStat(
            title: "Followers",
            value: "0",
            icon: Icons.people,
          ),

          _buildStat(
            title: "Following",
            value: "0",
            icon: Icons.person_add,
          ),
        ],
      ),
    );
  }

  Widget _buildStat({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Column(
      children: [

        Icon(
          icon,
          color: const Color(0xFF001F3F),
          size: 24,
        ),

        const SizedBox(height: 8),

        Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
                    const SizedBox(height: 20),
                    
