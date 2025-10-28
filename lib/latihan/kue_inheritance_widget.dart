import 'package:flutter/material.dart';
import 'package:tugas_pbo_inheritance/models/kue_inheritance.dart';

class KueInheritanceWidget extends StatelessWidget {
  KueInheritanceWidget({super.key});

  final Cookies cookies = Cookies("Chocochip", 15000);
  final Brownies brownies = Brownies("Brownies Panggang", 50000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8EDE3), 
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37), 
        title: const Text(
          "Cake's",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 3,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCakeButton(
              context,
              title: "Cookies: Kue Kering",
              color: const Color(0xFFD7CCC8),
              textColor: const Color(0xFF3E2723),
              onTap: () => _show(context, cookies.kueKering()),
              icon: Icons.cookie_outlined,
            ),
            const SizedBox(height: 20),
            _buildCakeButton(
              context,
              title: "Brownies: Kue Coklat",
              color: const Color(0xFFBCAAA4),
              textColor: const Color(0xFF3E2723),
              onTap: () => _show(context, brownies.kueCoklat()),
              icon: Icons.cake_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCakeButton(
    BuildContext context, {
    required String title,
    required Color color,
    required Color textColor,
    required VoidCallback onTap,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.withOpacity(0.3),
            offset: const Offset(0, 5),
            blurRadius: 8,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: textColor, size: 26),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _show(BuildContext context, String pesan) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: const Color(0xFFFFF3E0),
        content: Text(
          pesan,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF4E342E),
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
