import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.child, this.buttonText,this.onTap});

  final Widget? child;
  final String? buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.black26,offset: Offset(2, -2),blurRadius: 10)],
            color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child: _buildChild,
      ),
    );
  }

  Center get _buildChild {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child ??
              Text(
                buttonText ?? "",
                style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold,color: Colors.white),
              ),
        ));
  }
}
