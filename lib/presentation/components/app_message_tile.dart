import 'package:flutter/material.dart';

class AppMessageTile extends StatelessWidget {
  final String sender;
  final String message;
  final String time;
  final bool isOfficialReply;
  final VoidCallback? onTap;

  const AppMessageTile({
    Key? key,
    required this.sender,
    required this.message,
    required this.time,
    this.isOfficialReply = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: isOfficialReply ? Colors.yellow : Colors.grey[200],
        child: Icon(
          isOfficialReply ? Icons.verified : Icons.person,
          color: isOfficialReply ? Colors.black : Colors.grey,
        ),
      ),
      title: Text(sender, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(message, style: Theme.of(context).textTheme.bodyMedium),
      trailing: Text(time, style: Theme.of(context).textTheme.labelSmall),
      onTap: onTap,
    );
  }
}
