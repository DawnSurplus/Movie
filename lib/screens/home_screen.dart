import 'package:flutter/material.dart';
import 'package:movie/models/movie_popular_model.dart';
import 'package:movie/models/result_model.dart';
import 'package:movie/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<ResultModel>> popularMovies = APIService.getPopularMovie();
  Future<List<ResultModel>> nowPlayingMovies =APIService.getNowPlayingMovie();
  Future<List<ResultModel>> comingSoonMovies =APIService.getComingSoonMovie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Today's Movie",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Popular Movies"),
            FutureBuilder(
              future: popularMovies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var movie = snapshot.data![index];
                        return Text(movie.title);
                      },
                      separatorBuilder: (context, index) => const SizedBox(width: 20,),
                    ),
                  );
                }
                return const Text("Loading...");
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Now in Cinemas"),
            FutureBuilder(
              future: nowPlayingMovies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var movie = snapshot.data![index];
                        return Text(movie.title);
                      },
                      separatorBuilder: (context, index) => const SizedBox(width: 20,),
                    ),
                  );
                }
                return const Text("Loading...");
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Coming Soon"),
            FutureBuilder(
              future: comingSoonMovies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var movie = snapshot.data![index];
                        return Text(movie.title);
                      },
                      separatorBuilder: (context, index) => const SizedBox(width: 20,),
                    ),
                  );
                }
                return const Text("Loading...");
              },
            ),
          ],
        ),
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<MoviePopularModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        var popularMovie = snapshot.data![index].results.first;
        return Text(popularMovie.title);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 20,
        );
      },
    );
  }
}
