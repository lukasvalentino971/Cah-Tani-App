import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cah_tani/common/navigation.dart';
import 'package:cah_tani/common/styles.dart';
import 'package:cah_tani/ui/login/login_screen.dart';
import 'package:cah_tani/widgets/custom_input.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register-screen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController cUsername = TextEditingController();
  TextEditingController cEmail = TextEditingController();
  TextEditingController cPhoneNumber = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  TextEditingController cConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigation.back(),
                          child: const Icon(Icons.arrow_back_rounded),
                        ),
                        Text(
                          "Halaman Daftar",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Silahkan mendaftarkan akun anda.",
                      style:
                          GoogleFonts.poppins(fontSize: 13, color: grayColor),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                CustomInput(
                  controller: cUsername,
                  hint: "Username",
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInput(
                  controller: cEmail,
                  hint: "E-mail",
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInput(
                  controller: cPhoneNumber,
                  hint: "No Telepon",
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInput(
                  controller: cPassword,
                  hint: "Kata Sandi",
                  isObscure: true,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInput(
                  controller: cConfirmPassword,
                  hint: "Konfirmasi Kata Sandi",
                  isObscure: true,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigation.replaceNamed(
                            routeName: LoginScreen.routeName),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: primaryColor,
                        ),
                        child: Text(
                          "Daftar",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
