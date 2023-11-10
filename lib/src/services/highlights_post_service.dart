import 'package:dsfcrowdfunding/src/models/user_post.dart';
import 'package:dsfcrowdfunding/src/services/api_source.dart';

class HighlightsPostService {
  final ApiSource apiSource = ApiSource();

  Future<List<UserPost>> getPosts(String userId) async {
    // final route = '/users/$userId/posts?page=1';
    // final fullRoute = apiSource.BASE_ROUTE + route;

    final model = [mockPost1, mockPost2].map((map) {
      // final response = await apiSource.dio.get(fullRoute);
      // final model = (response.data['items'] as List).cast<Map>().map((map) {
      return UserPost.fromJson((map).cast());
    }).toList();
    return model;
  }
}

final mockPost1 = {
  'uuid': 'bb548068-c226-4310-af72-0d5b70c957e6',
  'thumb':
      'https://stream.dsfootball.io/posts/7b5515df-a65c-4f7c-8c4f-701e94c1b7c4-1694009125739/thumbnails/00001.png',
  'contentCategory': 'Game',
  'video':
      'https://stream.dsfootball.io/posts/7b5515df-a65c-4f7c-8c4f-701e94c1b7c4-1694009125739/index.m3u8',
  'postedAt': '2023-09-06T14:09:10+0000',
  'id': '27519869',
  'title': 'alguns lances',
  'numLikes': 1,
  'numComments': 1,
  'evaluation': {'composition': 0}
};

final mockPost2 = {
  'uuid': 'd54f173e-82ca-4efa-9854-0d95737cc08c',
  'thumb':
      'https://stream.dsfootball.io/posts/d7dae68b-39cc-4aeb-8181-433c6392852c-1689529547710/thumbnails/00001.png',
  'contentCategory': 'Game',
  'video':
      'https://stream.dsfootball.io/posts/d7dae68b-39cc-4aeb-8181-433c6392852c-1689529547710/index.m3u8',
  'postedAt': '2023-07-16T17:42:48+0000',
  'id': '27513206',
  'title': 'recuperação rápida no erro dos zagueiros',
  'numLikes': 0,
  'numComments': 1,
  'evaluation': {'composition': 0}
};
