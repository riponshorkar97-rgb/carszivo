import '../../../../core/widgets/global_loading.dart';
body: Stack(
  children: [
    Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.person_add_alt_1,
            size: 75,
            color: Color(0xFFD4AF37),
          ),

          const SizedBox(height: 20),

          const Text(
            "Join Carszivo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          CustomTextField(
            hintText: "Full Name",
            controller: nameController,
          ),

          const SizedBox(height: 20),

          CustomTextField(
            hintText: "Email",
            controller: emailController,
          ),

          const SizedBox(height: 20),

          CustomTextField(
            hintText: "Password",
            obscureText: true,
            controller: passwordController,
          ),

          const SizedBox(height: 30),

          AuthButton(
            text: "Create Account",
            onPressed: _isLoading ? null : _register,
          ),
        ],
      ),
    ),

    if (_isLoading)
      const GlobalLoading(
        message: "Creating your account...",
      ),
  ],
),
