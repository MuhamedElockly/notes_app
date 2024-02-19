import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final bool isLoading;
  const CustomButton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text(
                  'Add',
                  style: TextStyle(
                      color: kSecendryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
        ),
      ),
    );
  }
}
