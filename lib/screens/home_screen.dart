import 'package:material_ui/material_ui.dart';

import '../../theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top bar: menu - logo - bell
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, color: AppColors.navy),
                  Image.asset(
                    'assets/images/cliniqo_logo.jpg',
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                  const Icon(Icons.notifications_none, color: AppColors.navy),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 1.5),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: text.bodyMedium?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Jefferson',
                      style: text.headlineSmall?.copyWith(fontSize: 22),
                    ),
                    const SizedBox(height: 20),
                    _bookingCard(text),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Next appointment', style: text.titleMedium),
                        Text(
                          'See all',
                          style: text.titleMedium?.copyWith(
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    _appointmentCard(text),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Static bottom navigation (Home highlighted)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.navy,
        unselectedItemColor: AppColors.grey,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_calendar_outlined),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _bookingCard(TextTheme text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lavender,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Need a check-up?', style: text.titleMedium),
          const SizedBox(height: 4),
          Text(
            'Pick a department, a day and a time.',
            style: text.bodyMedium?.copyWith(fontSize: 12),
          ),
          const SizedBox(height: 14),
          Container(
            width: double.infinity,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.navy,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text('Book new appointment', style: text.labelLarge),
          ),
        ],
      ),
    );
  }

  Widget _appointmentCard(TextTheme text) {
    // Stack: "Booked" badge layered on the top-right of the card
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dental', style: text.titleMedium),
              const SizedBox(height: 4),
              Text('Dr. Cruz', style: text.bodyMedium),
              const SizedBox(height: 4),
              const Text(
                'Fri, Nov 27 · 1:00 PM',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _outlineButton('Reschedule', AppColors.navy),
                  _outlineButton('Cancel', AppColors.red),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
            decoration: BoxDecoration(
              color: AppColors.badgeBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Booked',
              style: TextStyle(fontSize: 11, color: AppColors.badgeText),
            ),
          ),
        ),
      ],
    );
  }

  Widget _outlineButton(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: color,
        ),
      ),
    );
  }
}
