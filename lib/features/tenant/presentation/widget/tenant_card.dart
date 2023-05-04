import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../domain/entities/tenant.dart';

class TenantCard extends StatelessWidget {
  final Tenant tenant;

  const TenantCard({Key? key, required this.tenant}) : super(key: key);

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tenant.phoneNumber != null
          ? () async {
              await _launchURL('tel:+${tenant.phoneNumber}');
            }
          : null,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 30,
                  child:
                      Icon(Icons.person, size: 48, color: Colors.grey.shade500),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tenant.name ?? '',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Text('Email: ${tenant.email ?? ''}'),
                      const SizedBox(height: 6),
                      Text('Occupation: ${tenant.occupation ?? ''}'),
                      const SizedBox(height: 6),
                      Text('Phone: ${tenant.phoneNumber ?? ''}'),
                    ],
                  ),
                ),
                if (tenant.active)
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child:
                        Icon(Icons.check_circle, size: 24, color: Colors.green),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
