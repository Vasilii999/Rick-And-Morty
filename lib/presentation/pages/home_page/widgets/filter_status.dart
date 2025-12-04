import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/models/status_option.dart';

class FilterStatus extends StatelessWidget {
  final ValueChanged<StatusOption> onSelected;
  final String? currentStatus;

  const FilterStatus({super.key, required this.onSelected, this.currentStatus});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<StatusOption>(
      icon: Icon(
        Icons.filter_alt,
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.grey[700]
            : Colors.white,
      ),
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<StatusOption>>[
        PopupMenuItem<StatusOption>(
          value: StatusOption.alive,
          child: Text(
            'Alive',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ),
        PopupMenuItem<StatusOption>(
          value: StatusOption.dead,
          child: Text(
            'Dead',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ),
        PopupMenuItem<StatusOption>(
          value: StatusOption.unknown,
          child: Text(
            'Unknown',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ),

        PopupMenuDivider(),

        PopupMenuItem<StatusOption>(
          value: StatusOption.reset,
          child: Row(
            children: [
              Icon(Icons.clear_all, color: Colors.grey, size: 20),
              SizedBox(width: 8),
              Text(
                'Сбросить',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
