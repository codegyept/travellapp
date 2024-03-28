import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget
{
  const ErrorWidget({
    super.key,
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context)
  {
    return ScaffoldMessenger(
      child: SnackBar(
        content: Text(error,),
      ),
    );
  }
}
