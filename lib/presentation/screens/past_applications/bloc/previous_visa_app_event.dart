import 'package:equatable/equatable.dart';

abstract class PreviousApplicationEvent extends Equatable {
  const PreviousApplicationEvent();
}

class FetchPreviousApplication extends PreviousApplicationEvent {
  const FetchPreviousApplication();
  @override
  List<Object?> get props => [];
}
