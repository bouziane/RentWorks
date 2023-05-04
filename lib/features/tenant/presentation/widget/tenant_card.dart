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
    // else {
    //   throw 'Could not launch $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tenant.phoneNumber != null
          ? () async {
              await _launchURL('tel:+${tenant.phoneNumber}');
            }
          : null,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        tenant.name ?? '',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      if (tenant.active)
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(Icons.check_circle,
                              size: 16, color: Colors.green),
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(tenant.email ?? ''),
                  const SizedBox(height: 4),
                  Text(tenant.occupation ?? ''),
                  const SizedBox(height: 4),
                  Text(tenant.phoneNumber ?? ''),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, size: 24),
          ],
        ),
      ),
    );
  }
}
