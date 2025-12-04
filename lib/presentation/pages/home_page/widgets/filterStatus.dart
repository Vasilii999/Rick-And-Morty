import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/models/status_option.dart';

class FilterStatus extends StatelessWidget {
  final ValueChanged<StatusOption> onSelected;
  final String? currentStatus;

  const FilterStatus({super.key, required this.onSelected, this.currentStatus});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<StatusOption>(
      icon: Icon(Icons.filter_alt, color: Colors.grey),
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<StatusOption>>[
        const PopupMenuItem<StatusOption>(
          value: StatusOption.alive,
          child: Text('Alive'),
        ),
        const PopupMenuItem<StatusOption>(
          value: StatusOption.dead,
          child: Text('Dead'),
        ),
        const PopupMenuItem<StatusOption>(
          value: StatusOption.unknown,
          child: Text('Unknown'),
        ),

        const PopupMenuDivider(),

        const PopupMenuItem<StatusOption>(
          value: StatusOption.reset,
          child: Row(
            children: [
              Icon(Icons.clear_all, color: Colors.grey, size: 20),
              SizedBox(width: 8),
              Text('Сбросить'),
            ],
          ),
        ),
      ],
    );
  }
}
