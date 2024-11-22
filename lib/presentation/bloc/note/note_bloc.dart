import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/model/note_model.dart';

part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc() : super(NoteInitial()) {
    on<AddNoteEvent>(_addNote);
  }

  void _addNote(AddNoteEvent event, Emitter<NoteState> emit) {
    final currentState = state;
    if (currentState is NotesLoaded) {
      final updatedNotes = List<NoteModel>.from(currentState.noteList)
        ..add(event.note);
      emit(NotesLoaded(updatedNotes));
    } else {
      emit(NotesLoaded([event.note]));
    }
  }
}
