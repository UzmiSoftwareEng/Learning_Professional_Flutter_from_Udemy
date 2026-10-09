import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatted = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.work: Icons.laptop,
  Category.travel: Icons.travel_explore,
  Category.food: Icons.lunch_dining_outlined,
  Category.leisure: Icons.gamepad
};

class Expense {
  Expense({required this.title,
    required this.amount,
    required this.category,
    required this.date,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final Category category;
  final DateTime date;

  get formattedDate{
    return formatted.format(date);
  }
}