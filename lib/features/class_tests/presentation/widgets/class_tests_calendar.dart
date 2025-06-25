import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/models/class_test_model.dart';
import '../../../../core/services/analytics_service.dart';

class ClassTestsCalendar extends StatefulWidget {
  final List<ClassTestModel> classTests;

  const ClassTestsCalendar({
    super.key,
    required this.classTests,
  });

  @override
  State<ClassTestsCalendar> createState() => _ClassTestsCalendarState();
}

class _ClassTestsCalendarState extends State<ClassTestsCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  List<ClassTestModel> _getEventsForDay(DateTime day) {
    return widget.classTests.where((test) {
      return isSameDay(test.testDate, day);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            ),
          ),
          child: TableCalendar<ClassTestModel>(
            firstDay: DateTime.now().subtract(const Duration(days: 365)),
            lastDay: DateTime.now().add(const Duration(days: 365)),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            calendarFormat: _calendarFormat,
            eventLoader: _getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.saturday,
            weekendDays: const [
              DateTime.thursday,
              DateTime.friday,
            ],
            daysOfWeekHeight: 24,
            rowHeight: 50,
            availableGestures: AvailableGestures.all,
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              weekendTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
              holidayTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
              markerDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              markerSize: 7.0,
              markersMaxCount: 3,
              markerMargin: const EdgeInsets.symmetric(horizontal: 0.3),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              headerPadding: const EdgeInsets.symmetric(vertical: 4.0),
              titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ) ??
                  const TextStyle(),
              formatButtonDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              formatButtonTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 12,
              ),
            ),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
              
              // Track day selection analytics
              AnalyticsService.logCustomEvent('calendar_day_selected', {
                'selected_date': DateFormat('yyyy-MM-dd').format(selectedDay),
                'events_count': _getEventsForDay(selectedDay).length,
                'screen': 'class_tests_calendar',
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
              
              // Track format change analytics
              AnalyticsService.logCustomEvent('calendar_format_changed', {
                'new_format': format.name,
                'screen': 'class_tests_calendar',
              });
            },
            onPageChanged: (focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
              });

              // Track calendar month navigation
              AnalyticsService.logCalendarMonthChange(
                DateFormat.MMMM().format(focusedDay),
                focusedDay.year.toString(),
              );
            },
          ),
        ),
        Expanded(
          child: _buildEventsList(),
        ),
      ],
    );
  }

  Widget _buildEventsList() {
    final selectedEvents = _selectedDay != null
        ? _getEventsForDay(_selectedDay!)
        : _getEventsForDay(DateTime.now());

    if (selectedEvents.isEmpty) {
      final displayDate = _selectedDay ?? DateTime.now();
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.event_note,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'No tests on ${DateFormat('MMMM d, y').format(displayDate)}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Select another day to view tests',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: selectedEvents.length,
      itemBuilder: (context, index) {
        final classTest = selectedEvents[index];
        return _buildEventCard(classTest);
      },
    );
  }

  Widget _buildEventCard(ClassTestModel classTest) {
    final isUpcoming = classTest.testDate.isAfter(DateTime.now());
    
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: InkWell(
        onTap: () {
          AnalyticsService.logCustomEvent('calendar_event_tapped', {
            'class_test_id': classTest.id ?? 'unknown',
            'subject': classTest.subject,
            'is_upcoming': isUpcoming,
            'date': DateFormat('yyyy-MM-dd').format(classTest.testDate),
          });
          context.go('/class-tests/${classTest.id}');
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 4,
                    height: 40,
                    decoration: BoxDecoration(
                      color: isUpcoming ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          classTest.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                classTest.subject,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            if (isUpcoming) ...[
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'UPCOMING',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.green[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '${classTest.testDate.hour}:${classTest.testDate.minute.toString().padLeft(2, '0')}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              if (classTest.description.isNotEmpty) ...[
                const SizedBox(height: 12),
                Text(
                  classTest.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
