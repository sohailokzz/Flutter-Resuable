import 'package:flutter/material.dart';
import 'package:flutter_reusable/theme/app_colors.dart';
import 'package:flutter_reusable/widgets/custom_button.dart';
import '../theme/theme_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = ThemeHelper.getCustomColors(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Architecture Demo',
          style: theme.textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Welcome to Flutter', style: theme.textTheme.headlineLarge),
            SizedBox(height: 16),
            Text(
              'Clean Theme Architecture',
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 16),
            Text(
              'This demonstrates how structure themes in separate files for better maintainability and architecture.',
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 24),

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Primary')),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: customColors.success,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Success',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: customColors.warning,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Warning',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            // Text Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
              ),
            ),

            SizedBox(height: 24),

            // Card
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Theme Benefits',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '• Better organization\n• Easy maintenance\n• Reusable components\n• Clean architecture',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),

            // Theme Status
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.secondary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.secondary.withValues(alpha: 0.3),
                ),
              ),
              child: Text(
                'Current Theme: ${ThemeHelper.isDarkMode(context) ? 'Dark' : 'Light'}',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: 16,
            ),
            CustomButton(
              backgroundColor: ThemeHelper.isDarkMode(context)
                  ? AppColor.darkPrimary
                  : AppColor.lightPrimary,
              onPressed: () {},
              text: "Custom Button",
            ),
          ],
        ),
      ),
    );
  }
}
