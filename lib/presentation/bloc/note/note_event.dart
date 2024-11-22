part of 'note_bloc.dart';

abstract class NoteEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddNoteEvent extends NoteEvent {
  final NoteModel note;
  AddNoteEvent(this.note);
  @override
  List<Object?> get props => [note];
}
