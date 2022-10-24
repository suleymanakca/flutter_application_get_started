import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/202/service/comment_model.dart';
import 'package:flutter_application_get_started/202/service/post_service.dart';

class CommentsLearnView extends StatefulWidget {
  const CommentsLearnView({super.key, this.postId});
  final int? postId;

  @override
  State<CommentsLearnView> createState() => _CommentsLearnViewState();
}

class _CommentsLearnViewState extends State<CommentsLearnView> {
  late final IPostService postService;
  bool _isLoading = false;
  List<PostCommentModel>? _commentsItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }

  Future<void> fetchItemsWithId(int postId) async {
    _changeLoading();
    _commentsItem = await postService.fetchRelatedCoommentsWithPostId(postId);
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _commentsItem?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: Text(_commentsItem?[index].email ?? ''),
          );
        },
      ),
    );
  }
}
