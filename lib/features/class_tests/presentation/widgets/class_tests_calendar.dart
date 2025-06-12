import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../data/graphql/class_tests_queries.graphql.dart';
import '../../../../../core/graphql/schema.graphql.dart';

class ClassTestsCalendar extends StatefulWidget {
  const ClassTestsCalendar({
    super.key,
  });

  @override
  State<ClassTestsCalendar> createState() => _ClassTestsCalendarState();
}

class _ClassTestsCalendarState extends State<ClassTestsCalendar> {
  DateTime _focusedDay = DateTime
      .now(); // Helper method to get the start and end of the current month as UTC DateTime objects
  (DateTime start, DateTime end) get _monthRange {
    final start = DateTime.utc(_focusedDay.year, _focusedDay.month, 1);
    final end = DateTime.utc(
        _focusedDay.year, _focusedDay.month + 1, 0, 23, 59, 59, 999);
    return (start, end);
  }

  List<Query$ClassTests$classTests> _getEventsForDay(
      DateTime day, List<Query$ClassTests$classTests> allClassTests) {
    // Filter tests for the specific day from the provided data
    return allClassTests.where((test) {
      final testDate = test.datetime;
      return testDate.year == day.year &&
          testDate.month == day.month &&
          testDate.day == day.day;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final (monthStart, monthEnd) = _monthRange;

    return Query$ClassTests$Widget(
      options: Options$Query$ClassTests(
        variables: Variables$Query$ClassTests(
          orderBy: [
            Input$ClassTestOrderByInput(datetime: Enum$OrderDirection.asc)
          ],
          where: Input$ClassTestWhereInput(
            datetime: Input$DateTimeFilter(
              gte: monthStart,
              lte: monthEnd,
            ),
          ),
        ),
        fetchPolicy: FetchPolicy.cacheAndNetwork,
      ),
      builder: (result, {refetch, fetchMore}) {
        if (result.isLoading && result.data == null) {
          return const Center(child: CircularProgressIndicator());
        }

        if (result.hasException) {
          log('Error loading class tests calendar: ${result.exception.toString()}',
              error: result.exception);
          return Center(
            child: Text(
              'Error loading calendar data',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          );
        }
        final allClassTests = result.parsedData?.classTests ?? [];

        return TableCalendar<Query$ClassTests$classTests>(
          firstDay: DateTime.now().subtract(const Duration(days: 365)),
          lastDay: DateTime.now().add(const Duration(days: 365)),
          focusedDay: _focusedDay,
          calendarFormat: CalendarFormat.month,
          eventLoader: (day) => _getEventsForDay(day, allClassTests),
          startingDayOfWeek: StartingDayOfWeek.saturday,
          weekendDays: const [
            DateTime.thursday,
            DateTime.friday,
          ],
          daysOfWeekHeight: 24,
          rowHeight: 40,
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
            formatButtonVisible: false,
            titleCentered: true,
            headerPadding: const EdgeInsets.symmetric(vertical: 4.0),
            titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ) ??
                const TextStyle(),
          ),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _focusedDay = focusedDay;
            });
          },
          onPageChanged: (focusedDay) {
            setState(() {
              _focusedDay = focusedDay;
            });
            // Refetch data when month changes
            refetch?.call();
          },
        );
      },
    );
  }
}
