part of 'explore_stays_start_date_bloc.dart';

/// Represents the state of ExploreStaysStartDate in the application.

// ignore_for_file: must_be_immutable
class ExploreStaysStartDateState extends Equatable {
  ExploreStaysStartDateState(
      {this.selectedDatesFromCalendar, this.exploreStaysStartDateModelObj});

  ExploreStaysStartDateModel? exploreStaysStartDateModelObj;

  List<DateTime?>? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, exploreStaysStartDateModelObj];
  ExploreStaysStartDateState copyWith({
    List<DateTime?>? selectedDatesFromCalendar,
    ExploreStaysStartDateModel? exploreStaysStartDateModelObj,
  }) {
    return ExploreStaysStartDateState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      exploreStaysStartDateModelObj:
          exploreStaysStartDateModelObj ?? this.exploreStaysStartDateModelObj,
    );
  }
}
