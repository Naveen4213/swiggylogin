import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/widgets/custom_button.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  void _showCountryPicker() {
    showCountryPicker(
      context: context,
      countryListTheme: const CountryListThemeData(
        bottomSheetHeight: 500,
      ),
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              children: [
                Container(
                  width: 260,
                  height: 250,
                  child: Image.asset("assets/img1.png"),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  "Add your phone number. We'll send you a code.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Google + Facebook sign-in button
                SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 120, // Adjust the width as needed
                            height: 50, // Adjust the height as needed
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/g1.png', // Replace with path to your Google icon image
                                    height: 24, // Adjust icon size as needed
                                  ),
                                  const SizedBox(width: 8), // Add some space between icon and text
                                  const Text(
                                    "Google",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120, // Adjust the width as needed
                            height: 50, // Adjust the height as needed
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/f2.png', // Replace with path to your Facebook icon image
                                    height: 24, // Adjust icon size as needed
                                  ),
                                  const SizedBox(width: 8), // Add some space between icon and text
                                  const Text(
                                    "Facebook",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),



                SizedBox(height: 10),
                Container(

                  child: Row(
                    children: [
                      Container(
                        height: 1,
                        width: 130,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 12),
                      const Text('OR'),
                      const SizedBox(width: 12),
                      Container(
                        height: 1,
                        width: 135,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70, // Adjust the height as needed
                  child: SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      cursorColor: Colors.orangeAccent,
                      controller: phoneController,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey.shade600,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: _showCountryPicker,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(height: 5), // Added SizedBox
                const SizedBox(height: 5), // Adjusted SizedBox height
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(text: "Continue", onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
