import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // URL launcher package ko import karo

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({
    Key? key,
  }) : super(key: key);

  // Download function
  void _downloadCv() async {
    const url =
        'https://drive.google.com/file/d/1TQD3UGLqXps8hcYqfqkKdGl1TKOe6oN3/view?usp=sharing'; // File ID se download link banao
    if (await canLaunch(url)) {
      await launch(url); // Link ko open karo
    } else {
      throw 'Could not launch $url'; // Error handle karo
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          _downloadCv, // Button ko press karne par download function call karo
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color.fromARGB(255, 244, 167, 36), // Button ka color set karo
      ),
      child: const Text(
        'Download CV', // Button ka text set karo
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
