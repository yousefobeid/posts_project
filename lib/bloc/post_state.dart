import 'package:equatable/equatable.dart';

class PostState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PostLoading extends PostState {
  @override
  List<Object?> get props => [DateTime.now().minute];
}

class PostLoaded extends PostState {
  final List<dynamic> posts;
  PostLoaded(this.posts);
  @override
  List<Object?> get props => [posts];
}

class PostError extends PostState {
  final String message;
  PostError(this.message);
  @override
  List<Object?> get props => [message];
}
