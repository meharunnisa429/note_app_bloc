part of 'note_bloc.dart';

abstract class NoteState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class NoteInitial extends NoteState {}

class NotesLoaded extends NoteState {
  final List<NoteModel> noteList;
  NotesLoaded(this.noteList);
  @override
  List<Object?> get props => [noteList];
}
