import 'package:flutter/material.dart';

class RoleSelector extends StatelessWidget {
  final bool isAdmin;
  final VoidCallback onAdminSelected;
  final VoidCallback onStudentSelected;
  const RoleSelector({
    super.key,
    required this.isAdmin,
    required this.onAdminSelected,
    required this.onStudentSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildRoleOption(context, "Admin", isAdmin, onAdminSelected),
        SizedBox(width: 20),
        _buildRoleOption(context, "Student", !isAdmin, onStudentSelected),
      ],
    );
  }

  Widget _buildRoleOption(
    BuildContext context,
    String role,
    bool isSelected,
    VoidCallback onTap,
  ) {
    {
      return InkWell(
        mouseCursor: SystemMouseCursors.click,
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.115,
          height: 50,
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.grey[200],

            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "Student",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      );
    }
  }
}
