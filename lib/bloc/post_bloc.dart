import 'dart:convert';

import 'package:bloc_project3/bloc/post_event.dart';
import 'package:bloc_project3/bloc/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super((PostLoading())) {
    on<FetchPostEvent>((event, emit) async {
      emit(PostLoading());
      try {
        final response = await http.get(
          Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        );
        if (response.statusCode == 200) {
          final List<dynamic> posts = jsonDecode(response.body);
          emit(PostLoaded(posts));
        }
      } catch (e) {
        emit(PostError("Error $e"));
      }
    });
  }
}
