import 'package:material_ui/material_ui.dart';

import '../../theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              // Logo (local image asset)
              Center(
                child: Image.asset(
                  'assets/images/cliniqo_logo.jpg',
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 60),
              Text('Sign In', style: text.headlineSmall),
              const SizedBox(height: 16),
              const _FakeField(label: 'Student Number'),
              const SizedBox(height: 12),
              const _FakeField(
                label: 'Password',
                trailing: Icons.visibility_off_outlined,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: text.bodyMedium?.copyWith(
                    color: AppColors.navy,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // "Continue" button (visual only)
              Container(
                width: double.infinity,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.navy,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text('Continue', style: text.labelLarge),
              ),
              const SizedBox(height: 20),
              Center(child: Text('Or', style: text.bodyMedium)),
              const SizedBox(height: 20),
              // Stack: Google logo pinned left, label centered
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppColors.border, width: 1.5),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 16,
                      child: Image.asset(
                        'assets/images/google_logo.jpg',
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text('Continue with Google', style: text.bodyMedium),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have account?",
                      style: text.bodyMedium?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Sign Up',
                      style: text.bodyMedium?.copyWith(
                        fontSize: 12,
                        color: AppColors.navy,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

/// Non-functional input field that only looks like the Figma design.
class _FakeField extends StatelessWidget {
  final String label;
  final IconData? trailing;

  const _FakeField({required this.label, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.border, width: 1.5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium
                  ?.copyWith(fontSize: 12, color: Colors.black45),
            ),
          ),
          if (trailing != null) Icon(trailing, size: 20, color: Colors.black54),
        ],
      ),
    );
  }
}
